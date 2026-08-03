---
title: Javascripts zur Anpassung von Foodsoft-Seiten
description: 
published: true
date: 2026-08-03T11:56:33.707Z
tags: 
editor: markdown
dateCreated: 2026-08-03T11:53:29.750Z
---

# Javascripts zur Anpassung von Foodsoft Seiten

Unter *Einstellungen > Layout > Fußzeile* kann ein Javascrip eingegeben werden. Dieses Skript wird bei jeder Seite ausgeführt und kann dann die Seite anpassen. 

Hier ein paar Beispiele: 
- QR-Code und Bezeichnung der Bank der Foodcoop im Zahlungsreferenzrechner anzeigen
- Bestellansicht: längere Notizen von Artikeln in Zeile darunter anzeigen
- Rechnungnen Bilanz ausgeben
- Unbezahlte Rechnungen: "Bezahlen" Checkbox deaktivieren für 0 € Rechnungen
- Abholdatum Edit-Url für geschlossene Bestellungen 

```javascript
<script> 
const href = window.location.href;

// QR-Code im Zahlungsreferenzrechner anzeigen
(function () {
    if (!href.includes("reference_calculator")) {
        return;
    }

    const BANK_NAME = "Franck Kistl Nachbarschaftsverein für Ernährungssouveränität";

    function addBankName() {
        document.querySelectorAll("p").forEach(p => {
            const amountEl = p.querySelector("b.amount");
            const referenceEl = p.querySelector("b.reference");

            if (!amountEl || !referenceEl) {
                return;
            }

            let ibanEl = referenceEl.nextElementSibling;

            while (ibanEl && ibanEl.tagName !== "B") {
                ibanEl = ibanEl.nextElementSibling;
            }

            if (!ibanEl) {
                return;
            }

            // Avoid adding it twice
            if (p.querySelector("span.epc-recipient")) {
                return;
            }

            const recipient = document.createElement("span");
            recipient.className = "epc-recipient";
            recipient.innerHTML =
                "mit der Empfängerbezeichnung <b>" + BANK_NAME + "</b><br><br>";

            ibanEl.insertAdjacentElement("afterend", recipient);
        });
    }

    function updateQrLinks() {
        document.querySelectorAll("p").forEach(p => {
            const amountEl = p.querySelector("b.amount");
            const referenceEl = p.querySelector("b.reference");

            if (!amountEl || !referenceEl) {
                return;
            }

            // Find the following <b> element containing the IBAN
            let ibanEl = referenceEl.nextElementSibling;

            while (ibanEl && ibanEl.tagName !== "B") {
                ibanEl = ibanEl.nextElementSibling;
            }

            if (!ibanEl) {
                return;
            }

            const amount = amountEl.textContent.trim();
            const reference = referenceEl.textContent.trim();
            const iban = ibanEl.textContent.replace(/\s+/g, "");

            if (!amount || !reference || !iban) {
                return;
            }

            const qrUrl =
                "https://epc-qr.eu/?" +
                "bname=" + encodeURIComponent(BANK_NAME) +
                "&euro=" + encodeURIComponent(amount) +
                "&iban=" + encodeURIComponent(iban) +
                "&info=" + encodeURIComponent(reference);

            // Add/update QR-Code link
            let link = p.querySelector("a.epc-qr-link");

            if (!link) {
                link = document.createElement("a");
                link.className = "epc-qr-link";
                link.target = "_blank";
                link.textContent = "QR-Code zum Scannen in deiner E-Banking App";
                // link.style.marginLeft = "1em";

                p.appendChild(document.createTextNode(" "));
                p.appendChild(link);
            }

            link.href = qrUrl;

            // Add/update QR image
            let img = p.querySelector("img.epc-qr-image");

            if (!img) {
                img = document.createElement("img");
                img.className = "epc-qr-image";
                img.alt = "QR-Code";
                img.style.display = "block";
                img.style.marginTop = "1em";
                img.style.width = "318px";
                img.style.height = "318px";

                p.appendChild(img);
            }

            img.src = qrUrl;
        });
    }

    // Initial creation
    addBankName();
    updateQrLinks();

    // Observe Foodsoft changing the preview values
    const observer = new MutationObserver(() => {
        updateQrLinks();
    });

    document.querySelectorAll("p").forEach(p => {
        observer.observe(p, {
            childList: true,
            characterData: true,
            subtree: true
        });
    });
})();




/// Bestellansicht: längere Notizen von Artikeln in Zeile darunter anzeigen
const max_note_characters = 20; // bis zu dieser Zeichezahl bei Bezeichnung anhängen
if(href.includes("group_orders") && href.includes("?order_id=")) {
  document.querySelectorAll("tr.order-article").forEach(tr => {
    const name = tr.querySelector("td.name");
    const pullLeft = tr.querySelector("div.pull-left");
    const items = pullLeft.innerHTML.split("<br>");
    let note = items[2].split(":").slice(1).join(":").trim();
    if(note) {
        if(note.length > max_note_characters) {
            const noteRow = document.createElement('tr');
            noteRow.innerHTML = `<td colspan='12' style='background-color: white; border-top: none; padding-top: 0px; padding-left: 1.5rem;'>
                <p style='opacity: 0.75; margin: 0px; font-size: 90%; font-style: italic;'>${note}</p>
                </td>`;
            tr.insertAdjacentElement("afterend", noteRow);
        } else {
            name.innerHTML += " <small>(<i>" + note + "</i>)</small>";
        }
    }
  });
}




// Rechnungnen Bilanz ausgeben
if(href.includes("finance/invoices/") && 
    document.querySelector("h1").innerHTML.includes("Rechnung")) {
  let invoice_corrected = 0.0;
  let members = 0.0;
  let total = null;
  document.querySelectorAll("dt").forEach(dt => {
    const dd = dt.nextElementSibling;
    // console.log(dt.innerHTML + " " + dd.innerHTML);
    if(dt.innerHTML.includes("Pfandbereinigter Betrag:")) {
        invoice_corrected = parseFloat(dd.innerHTML.replace(".", "").replace(",", "."));
    }
    if(dt.innerHTML.includes("Total:")) {
        total = dd;
        members = parseFloat(total.innerHTML.replace(".", "").replace(",", "."));
    }
  });
  if(invoice_corrected != 0 && total) {
    const balance = members - invoice_corrected;
    const color = balance >= 0 ? "green" : "red";
    // console.log(invoice_corrected + " " + members + " "+ balance);
      
    const balanceEldt = document.createElement('dt'); 
    balanceEldt.innerHTML = "Foodcoop " + (balance >= 0 ? "Überschuss" : "Verlust") + ":";
    const balanceEldd = document.createElement('dd');
    balanceEldd.innerHTML = "<span style='color:" + color + "'>" + (balance > 0 ? "+" : "") + balance.toFixed(2).replace(".",",") + " €</span>";
     
    total.insertAdjacentElement("afterend", balanceEldt);
    total.nextElementSibling.insertAdjacentElement("afterend", balanceEldd);
  }
}



// unpaid invoices: hide pay checkbox for invoices with 0 price
if(href.includes("finance/invoices/unpaid")) {
  document.querySelectorAll('input[name="invoices[]"]').forEach(checkbox => {
    const invoice_id = checkbox.value;
    const priceText = checkbox.nextElementSibling   // the <a>
      ?.nextSibling                                // the text node after <a>
      ?.textContent.trim(); 
    const price = parseFloat(priceText.replace(",","."));
    if(price == 0) {
      checkbox.disabled = true;
      //checkbox.hidden = true;     
    }
    console.log("invoice " + invoice_id + " " + price);
  });
}


// Abholdatum Edit-Url für geschlossene Bestellungen 
if(href.includes("/orders/") || href.includes("file:///")) {
    let p = document.querySelector("div.well").querySelector("p");
    if(p) {
        let p_html = p.innerHTML;
        // console.log(p);
        const pickup = "abgeholt werden";
        if(p_html.includes(pickup)) {
            const pickup_edit = pickup + " (<a href='" + href + "/edit'>Abholdatum ändern</a>)";
            // console.log(p_html.replace(pickup, pickup_edit));
            p.innerHTML = p_html.replace(pickup, pickup_edit);
        } else {
            p.innerHTML += " <a href='" + href + "/edit'>Abholdatum hinzufügen</a>";
        }
    }
}


</script>

```

> Die Skripts funktionieren zum Teil nur, wenn die Foodsoft auf Deutsch eingestellt ist. Eine Anpassung auf andere Sprachen sollte bei Bedarf leicht möglich sein.
{.is-warning}



## Links
- IG Foodcoops Forum: [Foodsoft anpassen mit custom HTML, CSS und Javascript](https://forum.foodcoops.at/t/tipp-foodsoft-anpassen-mit-custom-html-css-und-javascript-z-b-icon-setzen/8732)