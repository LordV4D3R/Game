# 📦 Báo Cáo Tổng Hợp Các Công Việc Đã Hoàn Thành

Tài liệu này lưu trữ toàn bộ lịch sử các công việc và dự án đã giải quyết xong để giữ cho danh sách công việc chính luôn sạch sẽ.

---

## 1. Xây Dựng Hệ Thống To-Do List Trên Obsidian
* **Thời gian hoàn thành:** 2026-08-28
* **Kết quả bàn giao:**
  - Thiết lập Dashboard trung tâm, Hộp thư đến (Inbox), Trang việc hôm nay (Today), và Quản lý dự án.
  - Xây dựng bảng tra cứu cú pháp Markdown To-Do nâng cao (Checkbox đa trạng thái, Tasks emoji, Dataview query).
  - Khởi tạo thư mục mẫu `Templates/` với Daily Task Template & Project Template.

---

## 2. Giải Quyết Triệt Để Ticket Kỹ Thuật NordVPN (Hồ Sơ Toàn Diện)
* **Thời gian hoàn thành:** 2026-09-22
* **Các mốc xử lý & Bằng chứng kỹ thuật:**
  - [x] Thu thập và đo kiểm Speedtest đối chiếu: Phát hiện mạng gốc VNPT đạt 361 Mbps nhưng qua server VN bị bóp xuống còn 1.4 Mbps (sụt 99.6%).
  - [x] Xác minh DNS Leak Test: Chứng minh không bị rò rỉ DNS với 15 node Datacamp.
  - [x] Thử nghiệm Obfuscated Server & Tắt NetBIOS theo hướng dẫn support: Chứng minh giải pháp của support thất bại (văng lỗi upload socket error, ping nhảy lên 679 ms).
  - [x] Cung cấp bằng chứng in-game LMHT: Khi tắt VPN ping 2-3ms, khi bật VPN ping nhảy vọt lên 105 - 192ms dù đã cấu hình Split Tunneling.
  - [x] Gỡ sạch, xóa registry `Installer\Products` và nâng cấp bản mới `8.12.0.0`: **Băng thông phục hồi ngoạn mục lên 338 Mbps**.
  - [x] **Tìm ra nguyên nhân gốc rễ của Split Tunneling:** Phát hiện Riot Games chạy trận đấu bằng file `...\League of Legends\Game\League of Legends.exe` chứ không phải file sảnh chờ `LeagueClient.exe`. Sau khi thêm đúng file, **ping trong game hạ xuống chuẩn 2 ms**!
  - [x] Gửi email tổng kết đóng ticket cho hỗ trợ viên Jesús Barragán.

---

## 3. Phân Tích Bộ Slide Môn HSF302 (Spring Boot & JavaFX)
* **Thời gian hoàn thành:** 2026-09-23
* **Kết quả bàn giao:**
  - Quét và phân tích 10 chapter slide `.pptx` tại `D:\Obsidian_Save\Just_Something4Anti\Slides`.
  - Xác định chuẩn công nghệ môn học: JDK 21, Spring Boot 3.x, Scene Builder 23, IntelliJ.
  - Soạn Master Prompt chuẩn sư phạm để mở New Chat bất cứ lúc nào.
  - Lập lộ trình học 3 giai đoạn: Desktop Trực quan (JavaFX/JPA) $\rightarrow$ Spring Core $\rightarrow$ Tăng tốc REST API.

---

## 4. Thiết Lập Quản Lý Dự Án & Kiểm Soát Phiên Bản (Git & GEMINI.md)
* **Thời gian hoàn thành:** 2026-09-25
* **Kết quả bàn giao:**
  - Khởi tạo Git cục bộ (`git init`) trong thư mục gốc để đảm bảo khả năng rollback an toàn.
  - Soạn thảo quy chuẩn vận hành `GEMINI.md` cho AI Agent (quy tắc quản lý tiến độ, markdown documentation, commit code).
