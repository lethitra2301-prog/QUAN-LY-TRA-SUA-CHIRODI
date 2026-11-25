
class Account:
    def __init__(self, username, password, role):
        self.username = username
        self.password = password
        self.role = role
        self.status = "Hoạt động"


class AccountManagement:
    def __init__(self):
        self.accounts = {}

    # Thêm tài khoản
    def add_account(self, username, password, role):
        if username in self.accounts:
            return "Tài khoản đã tồn tại"

        account = Account(username, password, role)
        self.accounts[username] = account
        return "Thêm tài khoản thành công"

    # Xem danh sách tài khoản
    def display_accounts(self):
        for username, account in self.accounts.items():
            print(
                username,
                account.role,
                account.status
            )

    # Chỉnh sửa tài khoản
    def edit_account(self, username, new_password, new_role):
        if username not in self.accounts:
            return "Không tìm thấy tài khoản"

        account = self.accounts[username]
        account.password = new_password
        account.role = new_role

        return "Cập nhật tài khoản thành công"

    # Khóa tài khoản
    def lock_account(self, username):
        if username not in self.accounts:
            return "Không tìm thấy tài khoản"

        self.accounts[username].status = "Đã khóa"
        return "Khóa tài khoản thành công"

    # Mở khóa tài khoản
    def unlock_account(self, username):
        if username not in self.accounts:
            return "Không tìm thấy tài khoản"

        self.accounts[username].status = "Hoạt động"
        return "Mở khóa tài khoản thành công"
