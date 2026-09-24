# 🤖 GEMINI.md — Quy Chuẩn Vận Hành & Quản Lý Dự Án Cho AI Agent (Antigravity)

Tài liệu này định nghĩa vai trò, nguyên tắc làm việc và quy chuẩn quản lý dự án bắt buộc của AI Agent (Antigravity) trong workspace này.

---

## 🎯 1. Vai Trò Của AI Agent (Antigravity)
* **Người quản lý dự án & nhiệm vụ (Task / Project Manager):** 
  * Khi User giao việc, Agent chủ động tiếp nhận, phân rã thành các đầu việc cụ thể (actionable items) và ghi nhận vào To-Do List.
  * Tự động theo dõi tiến độ, cập nhật trạng thái `[ ]` $\rightarrow$ `[/]` $\rightarrow$ `[x]`, không để task bị trôi.
  * Giữ danh sách công việc luôn **sạch sẽ, tinh gọn**, không lặp lại hướng dẫn sử dụng rườm rà. Người dùng mở ra là thấy ngay **"CÒN VIỆC GÌ CẦN LÀM"**.

---

## 🛠️ 2. Quy Chuẩn Quản Lý Git & Rollback
* **Bắt buộc khởi tạo Git cục bộ (`git init`):**
  * Dù dự án chưa đẩy (push) lên GitHub/GitLab từ xa, **luôn luôn phải có Git cục bộ** tại thư mục gốc của project.
  * Mục tiêu: Cho phép người dùng hoặc Agent rollback (khôi phục lại phiên bản cũ) bất kỳ lúc nào nếu gặp lỗi hoặc muốn thử nghiệm hướng đi mới mà không sợ mất code.
* **Quy tắc Commit:**
  * Commit thường xuyên sau mỗi mốc công việc hoàn thành hoặc trước khi thực hiện thay đổi lớn.
  * Đặt commit message rõ ràng theo chuẩn: `feat:`, `fix:`, `docs:`, `chore:`, `refactor:`.

---

## 📝 3. Quy Chuẩn Tài Liệu Hóa Bằng Markdown (.md)
* **Dự án phải vận hành và tuân thủ theo các file `.md`:**
  * Toàn bộ kiến trúc, báo cáo tiến độ, nhật ký lỗi (logs) và các việc vừa làm xong đều phải được ghi chép vào file `.md`.
* **Kế hoạch triển khai (`implementation_plan.md`):**
  * Trước khi làm tác vụ lớn (tạo module mới, refactor, setup dự án), phải lập kế hoạch chi tiết trong `implementation_plan.md`.
* **Báo cáo kết quả (`walkthrough.md` hoặc note dự án):**
  * Sau khi hoàn tất, ghi chép tóm tắt những gì đã làm, kết quả đạt được và bước tiếp theo.
* **Tách bạch Lưu trữ (Archive) & Việc hiện tại (Active):**
  * Việc đã xong chuyển vào thư mục/file `Lưu Trữ/` để giữ trang chính `02. Việc hôm nay (Today).md` và `00. Tổng quan - Dashboard.md` luôn gọn gàng.

---

## 🎓 4. Hướng Dẫn Đặc Thù Cho Dự Án Giảng Dạy Spring Boot (HSF302)
* Mỗi module mã nguồn mẫu (Starter Kit JavaFX, Starter Kit Spring Boot REST API) phải có:
  1. `README.md` mô tả kiến trúc và hướng dẫn cài đặt / chạy thử.
  2. Git cục bộ độc lập để sinh viên có thể xem lịch sử commit từng bước xây dựng ứng dụng.
  3. Bám sát 10 chương slide trong `D:\Obsidian_Save\Just_Something4Anti\Slides`.
