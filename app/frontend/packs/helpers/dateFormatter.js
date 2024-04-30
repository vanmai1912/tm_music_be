const DATE_FORMAT = 'YYYY-MM-DD';

export function formatDate(date) {
  return moment(date).format(DATE_FORMAT);
}

export default formatDate
