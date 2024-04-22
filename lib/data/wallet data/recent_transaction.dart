class RecentTransaction {
  String title;
  String description;
  String date;
  int price;

  RecentTransaction({
    required this.title,
    required this.description,
    required this.date,
    required this.price,
  });
}


  List<RecentTransaction> transaction = [
  RecentTransaction(
    title: "Paid accommodation",
    description: 'Paid accommodation for 6months',
    price: 10000,
    date: " January to June",
  ),
   RecentTransaction(
    title: "Paid accommodation",
    description: 'Paid accommodation for 6months',
    price: 10000,
    date: "January to June",
  ),
   RecentTransaction(
    title: "Paid accommodation",
    description: 'Paid accommodation for 6months',
    price: 10000,
    date: "January to June",
  ),
   RecentTransaction(
    title: "Paid accommodation",
    description: 'Paid accommodation for 6months',
    price: 10000,
    date: "July  to December",
  ),
   RecentTransaction(
    title: "Paid accommodation",
    description: 'Paid accommodation for 6months',
    price: 10000,
    date: "January to June",
  ),
];
