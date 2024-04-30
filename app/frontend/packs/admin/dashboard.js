import '../theme/chart';

// $(document).ready(function() {

//   const audienceChart = document.getElementById('audienceChart');
//   const tabs = document.querySelectorAll('[data-toggle="chart"]');

//   if (audienceChart) {
//     new Chart(audienceChart, {
//       type: 'line',
//       options: {
//         scales: {
//           yAxisOne: {
//             display: 'auto',
//             grid: {
//               color: '#283E59',
//             },
//             ticks: {
//               color: 'white',
//               callback: function (value) {
//                 return value + 'k';
//               },
//             },
//           },
//           yAxisTwo: {
//             display: 'auto',
//             grid: {
//               color: '#283E59',
//             },
//             ticks: {
//               color: 'white',
//               callback: function (value) {
//                 return value + '%';
//               },
//             },
//           },
//           x: {
//             ticks: {
//               color: 'white',
//             },
//           },
//         },
//       },
//       data: {
//         labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
//         datasets: [
//           {
//             label: 'Customers',
//             data: [0, 10, 5, 15, 10, 20, 15, 25, 20, 30, 25, 50],
//             yAxisID: 'yAxisOne',
//             borderColor: '#2c7be5',
//           },
//           {
//             label: 'Sessions',
//             data: [50, 75, 35, 25, 55, 87, 67, 53, 25, 80, 87, 45],
//             yAxisID: 'yAxisOne',
//             borderColor: '#2c7be5',
//             hidden: true,
//           },
//           {
//             label: 'Conversion',
//             data: [40, 57, 25, 50, 57, 32, 46, 28, 59, 34, 52, 48],
//             yAxisID: 'yAxisTwo',
//             borderColor: '#2c7be5',
//             hidden: true,
//           },
//         ],
//       },
//     });
    
//     tabs.forEach(tab => {
//       tab.addEventListener('click', function() {
//         const datasetIndex = parseInt(this.getAttribute('data-dataset'));
//         const meta = chart.getDatasetMeta(datasetIndex);
//         meta.hidden = !meta.hidden;
//         chart.update();
//       });
//     });
//   }

// });

$(document).ready(function() {

  const audienceChart = document.getElementById('audienceChart');
  const tabs = document.querySelectorAll('[data-toggle="chartline"]');

  if (audienceChart) {
    const chartline = new Chart(audienceChart, {
      type: 'line',
      options: {
        scales: {
          yAxisOne: {
            display: 'auto',
            grid: {
              color: '#283E59',
            },
            ticks: {
              color: 'white',
              callback: function (value) {
                return value + 'k';
              },
            },
          },
          yAxisTwo: {
            display: 'auto',
            grid: {
              color: '#283E59',
            },
            ticks: {
              color: 'white',
              callback: function (value) {
                return value + '%';
              },
            },
          },
          x: {
            ticks: {
              color: 'white',
            },
          },
        },
      },
      data: {
        labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
        datasets: [
          {
            label: 'Customers',
            data: [0, 10, 5, 15, 10, 20, 15, 25, 20, 30, 25, 50],
            yAxisID: 'yAxisOne',
            borderColor: '#2c7be5',
            hidden: false,
          },
          {
            label: 'Sessions',
            data: [50, 75, 35, 25, 55, 87, 67, 53, 25, 80, 87, 45],
            yAxisID: 'yAxisOne',
            borderColor: '#2c7be5',
            hidden: true,
          },
          {
            label: 'Conversion',
            data: [40, 57, 25, 50, 57, 32, 46, 28, 59, 34, 52, 48],
            yAxisID: 'yAxisTwo',
            borderColor: '#2c7be5',
            hidden: true,
          },
        ],
      },
    });

    tabs.forEach(tab => {
      tab.addEventListener('click', function() {
        const datasetIndex = parseInt(this.getAttribute('data-dataset'));
        chartline.data.datasets.forEach((dataset, index) => {
          if (index === datasetIndex) {
            dataset.hidden = false;
          } else {
            dataset.hidden = true;
          }
        });
        chartline.update();
      });
    });
  }

  const ordersChart = document.getElementById('ordersChart');
  const cardToggle = document.getElementById('cardToggle');

  if (ordersChart) {
    const chartOrder = new Chart(ordersChart, {
      type: 'bar',
      options: {
        scales: {
          y: {
            ticks: {
              callback: function (value) {
                return '$' + value + 'k';
              },
            },
          },
        },
      },
      data: {
        labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
        datasets: [
          {
            label: 'Sales',
            data: [25, 20, 30, 22, 17, 10, 18, 26, 28, 26, 20, 32],
            backgroundColor: '#2c7be5',
          },
          {
            label: 'Affiliate',
            data: [15, 10, 20, 12, 7, 0, 8, 16, 18, 16, 10, 22],
            backgroundColor: '#d2ddec',
            hidden: true,
          },
        ],
      },
    });
    cardToggle.addEventListener('change', function() {
      const datasetIndex = parseInt(this.getAttribute('data-dataset'));
      const dataset = chartOrder.data.datasets[datasetIndex];
      dataset.hidden = !this.checked;
      chartOrder.update();
    });
  }

  const trafficChart = document.getElementById('trafficChart');

  if (trafficChart) {
    new Chart(trafficChart, {
      type: 'doughnut',
      options: {
        plugins: {
          tooltip: {
            callbacks: {
              afterLabel: function () {
                return '';
              },
            },
          },
        },
        spacing: 5,
      },
      data: {
        labels: ['Facebook', 'Google'],
        datasets: [
          {
            data: [70, 20],
            backgroundColor: ['#2C7BE5', '#D2DDEC'],
            borderWidth: 0,
          },
        ],
      },
    });
  }
});
