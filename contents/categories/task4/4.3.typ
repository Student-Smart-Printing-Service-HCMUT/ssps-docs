== Kiểm tra khả năng sử dụng (Usability testing)

=== Kế hoạc khảo sát
Nhóm 3 lớp L02 với tư cách là người điều phối khảo sát tiến hành kiểm tra khả năng sử dụng của hệ thống hỗ trợ dịch vụ in ấn thông minh (SSPS) trong module quan trọng đầu tiên: upload tài liệu -> xác nhận -> thanh toán vào ngày 18/11/2003
#block(inset:(left:1cm))[
  - Đánh giá trải nghiệm người dùng với chức năng đặt in, chỉnh sửa cấu hình tài liệu và thanh toán đơn đặt hàng in.
  - Khảo sát nhằm phát hiện vấn đề với phiên bản hiện tại, cơ hội để cải thiện về thiết kế/quy trình và hiểu biết về hành vi và sở thích.
]

Các khía cạnh cần khai thác sau khi thực hiện Usability testing
#block(inset:(left:1cm))[
  - Thời gian trung bình người dùng cần bỏ ra để đặt một đơn hàng in ấn trong lần đầu sử dụng.
  - Các bước/thành phần khiến người dùng bối rối, hiểu sai về mục đích sử dụng được đặt ra ban đầu, thao tác sai.
  - Các bước/thành phần người dùng thao tác đúng và nắm rõ quy trình.
  - Ứng dụng, mục đích và trường hợp của những thành phần/phần tử thương được tương tác bởi người dùng.
  - Đề xuất, kỳ vọng của người dùng so với quy trình hiện tại của hệ thống.
]

Các chỉ số đánh giá đạt được trong quá trình khảo sát:
#block(inset:(left:1cm))[
  - *Tỷ lệ thành công*: Số lượng nhiệm vụ được người dùng hoàn thành trên tổng số nhiệm vụ được đề ra.
  - *Thời gian thực hiện*: Thời lượng trung bình mà người dùng cần hoàn thành một nhiệm vụ trên tổng thời gian thực hiện tất cả nhiệm vụ.
  - *Tỷ lệ phát sinh lỗi*: Tổng số lượng lỗi xuất hiện khi người dùng thao tác với hệ thống trên tổng số cơ hội phát sinh lỗi của người dùng.
  - *Tỷ lệ chuyển đổi*: Số lượng người dùng cân nhắc sử dụng dịch vụ in ấn thông minh so với số lượng sử dụng phương pháp truyền thống trên tổng số người dùng tham gia trải nghiệm.
  - *Tỷ lệ hài lồng*: Đánh giá mức độ hài lòng của khách hàng thông qua 5 mức độ.
]

Phương thức khảo sát nhóm đã sử dụng:
#block(inset:(left:1cm))[
  - *Thu thập dữ liệu*: Sử dụng bản prototype đơn giản để người dùng trải nghiệm sản phẩm ở giai đoạn đang phát triển hệ thống, thu thập dữ liệu theo 2 hướng: _định tính_ và _định lượng_. Phương pháp trong đợt Usability testing lần này được _thực hiện trực tiếp (in-person)_ (sẽ có minh chứng cụ thể trong mục người tham gia), người dùng thao tác trên desktop và mobile trải nghiệm sản phẩm, ghi lại kết quả, phản ứng, suy nghĩ của người dùng và nhóm sử dụng kết hợp heatmap - ứng dụng thu thập hành vi thao tác người dùng.
  - *Phân tích dữ liệu*: Phân tích dữ liệu thu thập được để tìm hiểu xu hướng, dấu hiệu và đánh giá trải nghiệm. Dữ liệu được tích hợp thành các insight sau khi được phân tích để cải thiện ứng dụng về thiết kế, cải tiến quy trình.
]

=== Đối tượng tham gia
Như đã đề cập, nhóm sẽ sử dụng 3 người khác nhau để thực hiện khảo sát trực tiếp (in-person) để đánh giá kết quả, phản ứng, suy nghĩ của người dùng khi sử dụng dịch vụ của hệ thống. Các loại người dùng thực hiện khảo sát
#block(inset:(left:1cm))[
  - *Đối tượng chính*: 2 sinh viên đã từng, thường xuyên trải nghiệm dịch vụ in ấn tại tiệm của trường và các tiệm in khác bên ngoài khuôn viên trường.
  - *Đối tượng phụ*: 1 sinh viên sử dụng dịch vụ in khác bên ngoài trường.
]
Người dùng khi tham gia khảo sát của nhóm sẽ được tặng bộ tài liệu hướng dẫn viết CV và Cover letter của Havard:
#link("https://drive.google.com/drive/u/0/folders/1v5zA9agdMYDpGhbLd779cvVlbeuwS8zJ")
Minh chứng về việc thực hiện khảo sát của người dùng nêu trên

#figure(
  grid(
    columns: 3,
    gutter: 3mm,
    image("../../images/tester-1.jpg"),
    image("../../images/tester-2.jpg"),
    image("../../images/tester-3.jpg")
  ),
  caption: "3 tester tham giao vào quá trình trải nghiệm hệ thống"
)

=== Nhiệm vụ
Khảo sát được thực hiện trên module quan trọng là _tải tài liệu (upload) -> xác nhận (confirm) -> thanh toán (payment)_ sẽ bao gồm các nhiệm vụ chính như sau:
#block()[
  - *Nhiệm vụ 1*: Bạn hãy thử tìm cách để có thể đặt in được một tài liệu học tập hoặc giấy tờ thông thường.
  #block(inset:(left:1cm))[
    \u{2218} *_Follow up 1_*: Giả sử bạn vừa tải và cấu hình sai tài liệu, bạn sẽ làm như thế nào?
    #linebreak()
    \u{2218} *_Follow up 2_*:  Bạn thường để ý đến giá tiền của đơn đặt hàng vào những thời điểm nào lúc đặt in tài liệu?
  ]
  - *Nhiệm vụ 2*: Theo dõi trạng thái về tài liệu đã đặt
  #block(inset:(left:1cm))[
    \u{2218} *_Follow up_*: Bạn hiểu như thế nào về các trạng thái của đơn hàng này, tại sao bạn lại hiểu như vậy?
  ]
  - *Nhiệm vụ 3*: Giả sử bạn đã đến tiệm in, bạn làm sao để biết thông tin tài liệu đã đặt để nhận.
  #block(inset:(left:1cm))[
    \u{2218} *_Follow up 1_*: Bạn nghĩ mình sẽ cần thông tin gì để nhận tài liệu?
    #linebreak()
    \u{2218} *_Follow up 2_*: Sau khi nhận tài liệu, bạn nghĩ mình cần thao tác gì trên ứng dụng nữa không? Bạn kỳ vọng đơn hàng đã nhận sẽ hiển thị như thế nào?
  ]
]

=== Thực hiện khảo sát
==== Danh sách chuẩn bị
#block()[
  - *Trang thiết bị khảo sát*:
  #block(inset:(left:1cm))[
    \u{2218} Laptop và chuột, Điện thoại di động chế độ screen mirroring cho người dùng thao tác.
    #linebreak()
    \u{2218} Laptop chế độ screen mirroring để người điều phối theo dõi thao tác.
  ]
  - *Chuẩn bị tài liệu giấy*: Danh sách nhiệm vụ, giấy điều khoản khảo sát, giấy hướng dẫn người dùng thực hiện khảo sát.
  - *Chuẩn bị tài liệu điện tử*: Phiếu khảo sát lọc tìm đối tượng tham gia, phiếu khảo sát đánh giá trải nghiệm sản phẩm, Bản kế hoạch/hướng dẫn khảo sát cho điều phối viên và Bản ghi chú để nhân sự hỗ trợ ghi nhận lại hành vi, biểu cảm, cảm nhận, đánh giá của người dùng trong lúc trải nghiệm.
  - *Kịch bản khảo sát*: đã được chuẩn bị mô tả chi tiết ở mục *_4.3.3_*
]


==== Lưu ý cho người điều phối
#block()[
  - *Thành phần tham gia*: 1 người điều phối để tương tác trực tiếp với người tham gia, 1 người theo dõi và ghi chú lại hành vi và feedback của người tham gia.
  - *Trước buổi trải nghiệm*:
  #block(inset:(left:1cm))[
    \u{2218} Kiểm tra danh sách, chuẩn bị các tài liệu và trang thiết bị cần thiết.
    #linebreak()
    \u{2218} Khi giới thiệu, đảm bảo: lời cảm ơn, giúp người tham gia thoải mái chia sẻ (gợi nhớ đây là buổi chia sẻ chứ không phải phỏng vấn, cho người tham gia đọc to các quy tắc về buổi phỏng vấn để warm-up), xác nhận các điều khoản sử dụng dữ liệu.
  ]
  - *Nguyên tắc điều phối*: Cách trao đổi trong buổi trải nghiệm
  #block(inset:(left:1cm))[
    \u{2218} *_Echo_*: Khi người tham gia đặt câu hỏi/đánh giá, người điều phối có thể nói vọng lại lời người tham gia hoặc hỏi theo cách mở rộng, làm rõ thêm về câu hỏi của người dùng. Ví dụ:
    #block(inset:(left:1.1cm))[
      \u{25AA} “Bước này lạ quá” → “Bạn thấy lạ như thế nào?”
    ]
    \u{2218} *_Boomerang_*: Khi người tham gia đặt thắc mắc, người điều phối có thể đặt ngược lại câu hỏi/gợi ý để người dùng có thể tự ra quyết định. Ví dụ:
    #block(inset:(left:1.1cm))[
      \u{25AA} “Nút này bấm sẽ nhảy đi đâu vậy?” → “Bạn dự đoán ứng dụng sẽ dẫn bạn đi đâu?”
      #linebreak()
      \u{25AA} “Nếu qua bước này thì dữ liệu có mất không nhỉ?” → “Bạn giả sử mình đang phải thực hiện bước này một mình để ra quyết định thử xem.”
    ]
    \u{2218} *_Columbo_*: Không tỏ ra bí hiểm, thông minh hơn người dùng vì đã biết trước về đặc điểm ứng dụng. Người điều phối có thể dùng phương pháp “ngập ngừng” để người tham gia lặp lại câu hỏi/ý tưởng theo hướng khác. Ví dụ:
    #block(inset:(left:1.1cm))[
      \u{25AA} “Bấm chỗ này thì có hoàn lại được không?” → “Bạn đang muốn … để … (ngập ngừng)”
    ]
  ]
  - *Cách ghi chú*: Sử dụng danh sách các nhiệm vụ cần thực hiện, theo dõi và ghi nhận lại: biểu cảm/hành vi/suy nghĩ của người dùng bên cạnh lời nói.
  - *Sau buổi trải nghiệm*:
  #block(inset:(left:1cm))[
    \u{2218} Hỏi thêm người dùng: đánh giá về ứng dụng, quá trình trải nghiệm ứng dụng.
    #linebreak()
    \u{2218} Gửi lời cảm ơn, quà vì đã tham gia buổi trải nghiệm.
    #linebreak()
    \u{2218} Tổng hợp lại kết quả, dấu hiệu và thống kê các điểm cần lưu ý
  ]
]

==== Tài liệu buổi trải nghiệm
#block()[
  - Checklist vật dụng: Xem lại mục *_4.3.4.1_*
  - Danh sách các nhiệm vụ: Sử dụng danh sách nhiệm vụ ở mục *_4.3.3_* để in ra các thẻ giấy (flashcard) cho người sử dụng.
  - Hướng dẫn điều phối: Xem lại mục *_4.3.4.2_*.
  - Điều khoản tham gia: #link("https://docs.google.com/document/d/1_KpeN6X2FtPsHiNPX0rSPbsqtIg7S9p8-TYfctEDQ6Q/edit?usp=sharing")[tài liệu PDF cần in để người tham gia ký xác nhận].
  - Ghi chú buổi trải nghiệm: #link("https://docs.google.com/spreadsheets/d/1Epc3z7tpa3Qgk_VL1n3LOSx6RjRsrNszd2zTkdcMO7o/edit?usp=sharing")[tài liệu buổi điện tử].
]

=== Kết quả của cuộc khảo sát
==== Xu hướng
Sau khi tiến hành khảo sát trên 3 người dùng, chúng tôi đã thu lại được kết quả đáng chú ý như sau
#block()[
  - *2 trên 3 người*: Không hiểu về tính năng nạp tiền vào ví và ý nghĩa của coin trong ứng dụng. Điều này gợi ý rằng khâu thanh toán cần tương minh hơn, cung cấp thêm gợi ý để người dùng thao tác.
  - *2 trên 3 người*: Kỳ vọng có thể đăng tải tài liệu nhưng sẽ được in trong giai đoạn sau → Hệ thống cần lưu lại các tài liệu đã đăng tải, được chọn từ các tài liệu đã đăng tải để in (tương tự checkbox của giỏ hàng)
  - *3 trên 3 người*: Không cân nhắc sử dụng phần “Order in progress” để tra cứu đơn hàng đã đặt/tìm mã đơn hàng khi lấy tài liệu → Chỉ target phần này thành các tài liệu sẵn sàng để nhận *READY*.
  - *3 trên 3 người*: Yêu cầu ứng dụng phải tự động hoàn tiền khi hủy đơn hàng chưa in và mất tiền/có penalty cho đơn hàng đã in xong.
  - *1 trên 3 người*: Hiểu sai tính năng vì rào cản ngôn ngữ → Cần bổ sung song ngữ đối với các tính năng trên ứng dụng.
]

==== Gợi ý cải thiện người dùng
Bên cạnh đó, nhóm cũng đã nhận được một vài góp ý từ người dùng cho sự thay đổi của hệ thống như sau:
#block()[
  - *Chức năng thanh toán*:
  #block(inset:(left:1cm))[
    \u{2218} Ứng dụng cần tường minh hơn về thông tin quy đổi giấy/tiền/coin.
    #linebreak()
    \u{2218} Cân nhắc bổ sung cơ chế thanh toán trong 1 lần, không cần qua bước nạp tiền vào ví.
  ]
  - *Chức năng danh sách tài liệu*: Các tài liệu đã tải/cấu hình nên được lưu trữ tương tự tính năng “giỏ hàng”, có thể lựa chọn in vào một thời điểm khác. 
  - *Chức năng theo dõi đơn hàng*: các trạng thái cần được ghi chú hướng dẫn hoặc đổi từ ngữ để không hiểu nhầm về các trạng thái, đặc biệt nếu lúc sau mở rộng thêm cơ chế tự phục vụ.
]
