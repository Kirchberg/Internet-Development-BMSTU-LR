var dataBaseProductMarket = new Array();

function addInfo() {

  if (document.getElementById("label-product").value != ""
  && document.getElementById("price-product").value > 0) {
    dataBaseProductMarket.push({productName: document.getElementById("label-product").value,
                                priceName: document.getElementById("price-product").value});

    var table = document.getElementById("product-table");

    var tableBody = document.createElement('TBODY');

    table.appendChild(tableBody);

    var count = dataBaseProductMarket.length - 1;

    var tr = document.createElement('TR');
    var td = document.createElement('TD');
    td.appendChild(document.createTextNode(dataBaseProductMarket[count].productName));
    tr.appendChild(td);

    var td = document.createElement('TD');
    td.appendChild(document.createTextNode(dataBaseProductMarket[count].priceName));
    tr.appendChild(td);

    tableBody.appendChild(tr);

    var tbl = document.getElementById("product-table");
    if (tbl != null) {
          for (var i = 1; i < tbl.rows.length; i++) {
            for (var j = 0; j < tbl.rows[i].cells.length; j++) {
              if (j % 2 != 0) {
                tbl.rows[i].cells[j].onmousemove = function () { this.style.backgroundColor = "#14B9D6"; this.style.color = "#FFFFFF"; };
                tbl.rows[i].cells[j].onmouseout = function () { this.style.backgroundColor = ""; this.style.color = ""; };
              }
            }
          }
      }
    totalCost();
    clearInfo();

  } else {
    alert("Fill in the blank fields");
  }
};

function totalCost() {
  var totalCost = 0;
  for(let i = 0; i < dataBaseProductMarket.length; i++) {
    totalCost += parseInt(dataBaseProductMarket[i].priceName);
  }
  document.getElementById("totalCostSumUp").innerHTML = totalCost;
};

function clearInfo() {
  document.getElementById("label-product").value = "";
  document.getElementById("price-product").value = null;
};
