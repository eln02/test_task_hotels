String formatPrice(int number) {
  return number.toString().replaceAllMapped(
    RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
        (match) => '${match[1]} ',
  );
}

String formatDate(String date) {
  List<String> parts = date.split('-');
  return '${parts[2]}.${parts[1]}.${parts[0]}';
}