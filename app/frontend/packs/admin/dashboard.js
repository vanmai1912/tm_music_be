import '../theme/chart';
import axios from 'axios';
import { toggleLegendAfterChart } from '../theme/chart';

$(document).ready(function() {
  fetchDataAndCreateTrafficChart();
  fetchDataAndCreateOrdersChart();
  fetchDataAndCreateAudienceChart();
});

const fetchDataAndCreateTrafficChart = () => {
  axios.get('/dashboard/client_chart')
    .then(response => {
      const data = response.data;
      createTrafficChart(data); 
    })
    .catch(error => {
      console.error('Lỗi khi gửi yêu cầu API:', error);
    });
};

const createTrafficChart = (data) => {
  const legends = document.querySelectorAll('[data-toggle="legend"]');
  const trafficChart = document.getElementById('trafficChart');
  if (trafficChart) {
    new Chart(trafficChart, {
      type: 'doughnut',
      options: {
        plugins: {
          tooltip: {
            callbacks: {
              afterLabel: () => {
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
            data: [data.facebook, data.google],
            backgroundColor: ['#2C7BE5', '#D2DDEC'],
            borderWidth: 0,
          },
        ],
      },
    });

    toggleLegendAfterChart(legends);
  }

};

const fetchDataAndCreateOrdersChart = () => {
  axios.get('/dashboard/payment_chart')
    .then(response => {
      const data = response.data;
      createOrdersChart(data); 
    })
    .catch(error => {
      console.error('Lỗi khi gửi yêu cầu API:', error);
    });
};

const createOrdersChart = (data) => {
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
                return '$' + value;
              },
            },
          },
        },
      },
      data: {
        labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
        datasets: [
          {
            label: data.current_year.year,
            data: data.current_year.data,
            backgroundColor: '#2c7be5',
          },
          {
            label: data.prev_year.year,
            data: data.prev_year.data,
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
}

const fetchDataAndCreateAudienceChart = () => {
  axios.get('/dashboard/status_chart')
    .then(response => {
      const data = response.data;
      createAudienceChart(data) 
    })
    .catch(error => {
      console.error('Lỗi khi gửi yêu cầu API:', error);
    });
};

const createAudienceChart = (data) => {
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
            label: 'Views',
            data: data.views,
            yAxisID: 'yAxisOne',
            borderColor: '#2c7be5',
            hidden: false,
          },
          {
            label: 'Interactions',
            data: data.interactions,
            yAxisID: 'yAxisOne',
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
}
