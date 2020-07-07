var dataBaseProductMarket = new Array();

function selectedRow(){

    var index,
        table = document.getElementById("product-table-copy");

    for(var i = 2; i < table.rows.length; i++)
    {
        table.rows[i].onclick = function()
        {
            if(typeof index !== "undefined"){
               table.rows[index].classList.toggle("selected");
            }
            console.log(typeof index);
            index = this.rowIndex;
            this.classList.toggle("selected");

            dataBaseProductMarket.push({productName: this.cells[0].innerHTML,
                                        priceName: this.cells[1].innerHTML});
            updateTableBin();
            console.log(typeof index);
         };
    }
}

function updateTableBin() {
  var table = document.getElementById("bin");

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

}
