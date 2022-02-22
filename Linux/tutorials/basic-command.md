# Câu lệnh Linux cơ bản

## Quản lý File, Folders

> Di chuyển giữa các folders

```
  cd <dir>
  cd ..
```

> Xem vị trí hiện tại

```
  pwd
```

> Xem cấu trúc folder hiện tại

- Chỉ tên file: `ls`
- Chi tiết: `ls -la`

> Tạo folders

```
  mkdir <dir_name_1> <dir_name_2> ...
```

> Tạo files

```
  touch <file_name_1> <file_name_2> ...
```

> Xoá file, folder (Xoá vĩnh viễn không vào trash). Sử dụng `trash-cli` tool nếu muốn xoá vào trash.

- Xoá file: `rm <file_name> ...`
- Xoá folders: `rm -r <dir_name>`
- Xoá bắt buộc (force): `rm -rf <file_name or dir_name> ...`

> Copy file và folder. Tạo file (folders) khi không

- Copy file

```
  cp <original_file_path> <target_file_path>
```

- Copy folder (Copy cả thư mục origin sang target. Nếu target đã tồn tại)

```
  cp -R <original_folder_path> <target_folder_path>
```

- Copy folder (Chỉ copy nội dung trong origin sang target)

```
  cp -R <original_folder_path>/ <target_folder_path>
```

> Di chuyển file, folders

```
  mv <original_file_path> <target_file_path>

  mv -R <original_folder_path> <target_folder_path>
```
