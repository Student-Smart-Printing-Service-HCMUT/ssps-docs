#pagebreak()
==  Class diagram 

_Draw a class diagram of the printer order system.
_\

*Frontend Class diagram*: Các class trong sơ đồ UML class diagram đều sử dụng chung 1 class
là DataService. Class DataService có nhiệm vụ gọi các API cung cấp bởi phía server.
#figure(caption: "Frontend Class diagram",
    image("../../images/ClassDia_FE.png") 
  )

*Mô tả*

#block(inset:(left:1cm))[
    - Đối tượng *Student* bao gồm các thuộc tính: id, name, email, hash_password, default_coin_per_sem, remain_coins, và InteractingView với Main Page View và *Student* có phương thức changPassword().
    - Đối tượng *Order* bao gồm các thuộc tính: id, filename, location, num_pages, money, status.
    - Đối tượng *File* bao gồm các thuộc tính: file, config: Config (filetype, pagetype), và phương thức changeConfig().
    - Đối tượng *Location* bao gồm các thuộc tính: id, campus, building, room.
    - Đối tượng *Printer* bao gồm các thuộc tính: id, name, model, location(Location).
    - Đối tượng *PrintingRequest* bao gồm các thuộc tính: id, List<File>, filename, num_of_copies, page_size, page_print(List<int>) và phương thức AddOrder(file, num_of_copies), DeleteOrder(file, num_of_copies), CalculateMoney().
    - *Student* có thể tương tác với *MainPageView*. *MainPageView* bao gồm  các thuộc tính student: Student, totalMoney, orderProcess: List<Order>. Các phương thức của *MainPageView* bao gồm: ShowOrderListProcess(order:List<Order>), showButtonOrderPrint(), Uploadfile() và Refresh().

    - Sau khi *Student* upload file, *MainPageView* sẽ chuyển hướng đến *OrderPrintingView* để hiển thị thông tin về file vừa upload và tùy chọn các thông số in ấn. *OrderPrintingView* bao gồm các thuộc tính:  selectedFile: List<File>, selectPrinter: List<Printer>, selectLocation: List<Location>, paymentController: PaymentController, waitingPrintList< 1..unordered> và các phương thức: ShowFileUpload(selectedFile: List<File>), ShowChooseNumOfCopies(selectedFile: List<File>), ShowPreviewDocument(selectFile: File), ShowChooseOptinal(selectedFile: List<File>), ShowTotalMoney(), ChoosePrinterandLocation(), ShowConfirmOrder(), ShowPatmentMethod().

]
*Class Diagram cho Business Logic Layer* Tương tự vai trò của class DataService bên phía
presentation, class Router phía business logic đóng vai trò tiếp nhận và điều hướng các lời gọi API từ phía presentation layer tới các logic xử lý trong hệ thống. Ngoài Router, các lớp đều sử dụng class Database để thực hiện thao tác dữ liệu trực tiếp từ cloud database.
#figure(caption: "Backend Class diagram",
    image("../../images/ClassDia_BE.png") 
  )

*Kết nối giữa frontend và backend*

Class DataService là đại diện bên frontend, chuyên gửi các request và nhận dữ liệu trả về từ backend.
Tương tự, class Router là đại diện bên backend, chuyên tiếp nhận các request từ frontend, điều hướng
tới các logic xử lý nghiệp vụ, và trả về dữ liệu tương ứng với request nhận được.

#figure(caption: "FE_BE Connect diagram",
    image("../../images/ClassDia_Connect.png", width: 40%, height: 30%) 
  )