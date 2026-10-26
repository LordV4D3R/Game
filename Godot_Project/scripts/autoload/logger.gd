extends Node
## Hệ thống ghi Log trung tâm (Autoload Singleton: Logger)
## Tuân thủ quy chuẩn truy vết GEMINI.md với 4 cấp độ: DEBUG, INFO, WARN, ERROR.

enum Level {
	DEBUG = 0,
	INFO = 1,
	WARN = 2,
	ERROR = 3,
}

## Cấp độ log tối thiểu được phép in ra Console.
@export var min_level: Level = Level.DEBUG


func _ready() -> void:
	info("GameLogger", "Hệ thống ghi log khởi tạo thành công (Godot %s)." % Engine.get_version_info().string)


## Ghi log cấp độ DEBUG (chi tiết biến, trạng thái nội bộ).
func debug(context: String, message: String) -> void:
	if min_level <= Level.DEBUG:
		print_rich("[color=gray][%s][DEBUG][%s] %s[/color]" % [_timestamp(), context, message])


## Ghi log cấp độ INFO (luồng nghiệp vụ chính, chuyển trạng thái).
func info(context: String, message: String) -> void:
	if min_level <= Level.INFO:
		print_rich("[color=cyan][%s][INFO][%s][/color] %s" % [_timestamp(), context, message])


## Ghi log cấp độ WARN (cảnh báo dữ liệu bất thường nhưng vẫn tiếp tục chạy được).
func warn(context: String, message: String) -> void:
	if min_level <= Level.WARN:
		var formatted: String = "[%s][WARN][%s] %s" % [_timestamp(), context, message]
		print_rich("[color=yellow]%s[/color]" % formatted)
		push_warning(formatted)


## Ghi log cấp độ ERROR (lỗi nghiêm trọng, thiếu tài nguyên hoặc ngoại lệ).
func error(context: String, message: String) -> void:
	if min_level <= Level.ERROR:
		var formatted: String = "[%s][ERROR][%s] %s" % [_timestamp(), context, message]
		print_rich("[color=red][b]%s[/b][/color]" % formatted)
		push_error(formatted)


func _timestamp() -> String:
	return Time.get_time_string_from_system()
