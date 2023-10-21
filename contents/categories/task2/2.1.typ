#pagebreak()
= System modelling

==  Activity diagram 

_Draw an activity diagram to capture the business process between systems and the stakeholders in Task
Assignment module_

#figure(caption: [Activity diagram for Order Printing],
    image("../../images/Activity_Diagram.png")
  )

*Mô tả:*
#block(inset:(left:1cm))[
  - Sau khi đăng nhập, sinh viên sẽ ở trang Home page.
  - Lúc này sinh viên có thể chọn vào button “Order Printing” để thực hiện đặt in tài liệu.
  - Sinh viên sẽ được di chuyển đến trang OrderPrinting, sinh viên có thể Upload file cần in lên. Sinh viên có thể upfile lên hệ thống, hệ thống sẽ kiểm ra loại doctype của tài liệu và size file <= 100MB. Nếu thỏa điều kiện thì sinh viên Upload file thành công, nếu không thành công hệ thống sẽ thông báo để sinh viên Upload lại.
  - Sau khi Upload file thành công, sinh viên có thể chọn file đó và remove file, hệ thống sẽ cho phép sinh viên Upload file khác sau khi remove file.
  - Tiếp theo sinh viên sẽ thiết lập những thông số in bao gồm: Number of copies, Option Layout (Potrait layout Landscape layout), OptionPages (All Pages, Odd pages only, Even pages Only, Specific pages), Pages per sheet, Optinal Pages side (One sides, Both sides), etc.
  - Sau khi đã thiết lập những thông số in, sinh viên click vào button "Confirm" thì hệ thống đưa sinh viên đến trang List of uploads & configured document.
  - Tại trang  này,  sinh  viên  có thể tiếp tục Thêm tài liệu in, Chọn tài liệu  và  xóa, Thông tin  giá tiền đơn hàng, Button "Order" để tiến hành quá trình thanh toán và sinh viên được di chuyển đến trang Confirm order.
  - Ở trang Confirm Order, sinh viên tiếp tục chọn Date để giao in, Location để giao và Thanh toán đơn hàng bằng coin.
  - Nếu số dư coin trong tài khoản sinh viên còn dư, sinh viên sẽ được phép thanh toán và sinh viên chọn Order Now hệ thống sẽ thông báo đơn hàng đã được đặt thành công và sinh viên được di chuyển đến trang Home page.
  - Nếu số dư coin trong tài khoản sinh viên không đủ, sinh viên sẽ không được phép thanh toán và hệ thống sẽ thông báo cho sinh viên, sinh viên có thể di chuyển đến trang nạp thêm coin để thanh toán.
  - Sau khi click vào Order Now, sinh viên được chyển về Home page, để theo dõi trạng thái (status) khi in. Và lúc này hệ thống sẽ gửi một Trigger Update data set order print đến hệ thống, và gửi Request and Update order đến SPSO.
  - Sau khi nhận được request order, SPSO sẽ chuẩn bị máy in và giấy, Click vào Print order để máy in (Printer) in tài liệu và gửi Trigger Update status process lên hệ thống.
  - Sau khi có tài liệu, sinh viên theo dõi trạng thái (Done) in tài liệu có thể đến địa điểm đã confirm để nhận tài liệu.
]
