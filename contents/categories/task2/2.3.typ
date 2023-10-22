#pagebreak()
==  Class diagram 

_Draw a class diagram of the printer order system.
_\

#figure(caption: "Class Diagram of Upload file",
    image("../../images/Class_Diagram.png")
  )

*Mô tả*

#block(inset:(left:1cm))[
    - Đối tượng *Student* bao gồm các thuộc tính: id, name, email, hash_password, default_coin_per_sem, remain_coins, và InteractingView với Main Page View và *Student* có phương thức changPassword().
    - Đối tượng *Order* bao gồm các thuộc tính: id, filename, location, num_pages, money, status.
    - Đối tượng *File* bao gồm các thuộc tính: file, config: Config (filetype, pagetype), và phương thức changeConfig().
    - Đối tượng *Location* bao gồm các thuộc tính: id, campus, building, room.
    - Đối tượng *Printer* bao gồm các thuộc tính: id, name, model, location(Location).
    - Đối tượng *PrintingRequest* bao gồm các thuộc tính: id, List<File>, filename, num_of_copies, page_size, page_print(List<int>) và phương thức AddOrder(file, num_of_copies), DeleteOrder(file, num_of_copies), CalculateMoney().
    - *Student* có thể tương tác với *MainPageView*. *MainPageView* bao gồm đối tượng *MainPageModel*, *MainPageController*, các thuộc tính student: Student, totalMoney, orderProcess: List<Order>. Các phương thức của *MainPageView* bao gồm: ShowOrderListProcess(order:List<Order>), Uploadfile() và Refresh().
    - *MainPageModel* bao gồm các thuộc tính: student: Student, order: Order, totalMoney và các phương thức: GetOrderListProcess(student.id), UploadView().
    - *MainPageController* bao gồm các phương thức: UploadOrderProcess(student.id, order.id), GetFileUpload(), UpdateViewUploadfile().

    - Sau khi *Student* upload file, *MainPageView* sẽ chuyển hướng đến *OrderPrintingView* để hiển thị thông tin về file vừa upload và tùy chọn các thông số in ấn. *OrderPrintingView* bao gồm các thuộc tính: *OrderPrintingModel*, *OrderPrintingController*, selectedFile: List<File> và các phương thức: ShowFileUpload(selectedFile: List<File>), ShowChooseNumOfCopies(selectedFile: List<File>), ShowChooseOptinal(selectedFile: List<File>), ShowTotalMoney(), ChoosePrinterandLocation(), ShowConfirmOrder(), ShowPatmentMethod().
    - *OrderPrintingModel* bao gồm các thuộc tính: waitingPrintList và các phương thức: WritePrintingRequest(filename, status, printer, location, totalMoney).
    - *OrderPrintingController* có *PaymentController* và các phương thức: GetSelectRequest(), SendOrdertoManager(), GiveMoneyBack(money).

]


