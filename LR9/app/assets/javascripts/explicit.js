document.addEventListener('DOMContentLoaded', function () {
    const container = document.querySelector('#explicit__container');

    if (!container) return;

    const form = container.querySelector('#explicit__form');
    const result = container.querySelector('#explicit__result');

    form.addEventListener('ajax:success', function(evt) {
      const response = evt.detail[0];
      result.innerHTML = "";
      if (response.twins.length == 0) {
        result.innerHTML = "There's no twins!";
      } else {
      const table = document.createElement("table");
      result.appendChild(table);
      const headRow = document.createElement("tr");
      table.appendChild(headRow);
      const headId = document.createElement("th");
      headId.textContent = "#";
      headRow.appendChild(headId);
      const headFirst = document.createElement("th");
      headFirst.textContent = "First";
      headRow.appendChild(headFirst);
      const headSecond = document.createElement("th");
      headSecond.textContent = "Second";
      headRow.appendChild(headSecond);
      for (let i = 0; i < response.twins.length; i++) {
          const row = document.createElement("tr");
          table.appendChild(row);
          const id = document.createElement("td");
          id.textContent = i + 1;
          row.appendChild(id);
          const first = document.createElement("td");
          first.textContent = response.twins[i][0];
          row.appendChild(first);
          const second = document.createElement("td");
          second.textContent = response.twins[i][1];
          row.appendChild(second);
      }
    }
    });
});
