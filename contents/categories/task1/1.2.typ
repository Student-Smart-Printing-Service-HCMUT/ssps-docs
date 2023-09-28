== Mô tả tất cả yêu cầu chức năng và phi chức năng có thể suy ra từ tổng thể bài toán

=== _Yêu cầu chức năng (functional requirements) (Ít nhất 5 yêu cầu chức năng cho mỗi bên liên quan)_
Sinh viên (user):
#block(inset: (left: 1cm))[
    - Đăng ký/đăng nhập tài khoản.
    - Thay đổi mật khẩu.
    - Đặt yêu cầu in ấn từ xa.
    - Chọn máy in và theo dõi trạng thái in ấn.
    - Kiểm tra thông báo về tình trạng của tài liệu đã gửi.
    - Theo dõi lịch sử in ấn của mình.
]

Người quản lý hệ thống (SPSO):
#block(inset: (left: 1cm))[
    - Theo dõi lịch sử in ấn của sinh viên.
    - Quản lý hoạt động của máy in trong hệ thống như thêm/xóa/điều chỉnh trạng thái hoạt động, thông tin định danh của máy in.
    - Quản lý các thông số khác của hệ thống như số trang mặc định, ngày gửi tài liệu, các kiểu tài liệu có thể phục vụ.
    - Hủy tài liệu trong trường hợp học sinh không đến lấy đúng thời hạn.
    - Theo dõi báo cáo về việc sử dụng hệ thống in ấn sau mỗi tháng và mỗi năm.
]

Người quản lý máy in (trường hợp flow truyền thống):
#block(inset: (left: 1cm))[
    - Tiếp nhận đơn đặt in
    - In ấn tài liệu theo yêu cầu
    - Cất xếp tài liệu và gửi sinh viên
]

Đơn vị cung cấp giấy, mực in và kỹ thuật viên bảo trì: 
#block(inset: (left: 1cm))[
    - Cung cấp giấy in, mực in cho hệ thống trong trường hợp hết giấy, hết mực.
    - Điều động kỹ thuật viên đến bảo trì trang thiết bị định kỳ và kịp thời khi xuất hiện lỗi kỹ thuật.
]


=== _Yêu cầu phi chức năng (non-functional requirements)_
#h(1cm)Yêu cầu phi chức năng liên quan đến việc xác định những ràng buộc trong dịch vụ hoặc chức năng có ảnh hưởng đến hệ thống như ràng buộc về thời gian, quá trình phát triển, hiệu suất và thường áp dụng tới toàn bộ hệ thống hơn là những đặc điểm hay dịch vụ riêng lẻ. Đối với SSPS, chúng ta có những yêu cầu phi chức năng như sau:
#block(inset: (left: 1cm))[
    - Sự hiệu quả (Efficiency): Trang web/app đảm bảo đáp ứng yêu cầu in ấn của sinh viên, cung cấp thông tin về tình trạng sử dụng trang thiết bị, chi phí sử dụng và tài khoản cá nhân để người dùng chủ động sắp xếp, đưa ra quyết định phù hợp nhất.
    - Tính khả dụng (Availability): Trang web/app hoạt động 24/7 để phục vụ yêu cầu đặt in và kiểm soát quá trình in ấn của các máy in.
    - Độ tin cậy (Reliability): Hệ thống phải có cơ chế sao lưu dữ liệu định kỳ hoặc khi xuất hiện lỗi kỹ thuật, có khả năng thống kê, ghi nhận lại lỗi phát sinh trong quá trình hoạt động. Tất cả tác vụ phải được hoàn thành theo yêu cầu đặt in của người dùng, hoặc có cơ chế thông báo và hướng dẫn xử lý rõ ràng nếu không thành công.
    - Tính dễ sử dụng (Ease Of Use):, cung cấp hướng dẫn sử dụng, xử lý các tình huống phát sinh và có thể thuận tiện thao tác chỉ với sự hướng dẫn/điều hướng và tài liệu của ứng dụng. Người dùng không cần thiết lập thông số kỹ thuật để kết nối với máy in.
]



