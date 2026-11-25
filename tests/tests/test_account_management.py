
import os
import sys
import unittest

# Them thu muc src vao duong dan import
sys.path.insert(
    0,
    os.path.abspath(
        os.path.join(os.path.dirname(__file__), "../src")
    )
)

from account_management import AccountManager


class TestAccountManager(unittest.TestCase):

    def setUp(self):
        self.manager = AccountManager()

    # 1. Kiem tra them tai khoan
    def test_add_account(self):
        result = self.manager.add_account(
            "admin", "123456", "Nguyen Van A", "Admin"
        )
        self.assertEqual(
            result, "Thêm tài khoản thành công!"
        )

    # 2. Kiem tra tai khoan trung
    def test_duplicate_account(self):
        self.manager.add_account(
            "admin", "123456", "Nguyen Van A", "Admin"
        )
        result = self.manager.add_account(
            "admin", "abcdef", "Nguyen Van B", "Staff"
        )
        self.assertEqual(
            result, "Tên tài khoản đã tồn tại!"
        )

    # 3. Kiem tra tim kiem tai khoan
    def test_search_account(self):
        self.manager.add_account(
            "staff01", "123456", "Tran Thi B", "Staff"
        )
        account = self.manager.search_account("staff01")
        self.assertIsNotNone(account)

    # 4. Kiem tra cap nhat tai khoan
    def test_update_account(self):
        self.manager.add_account(
            "staff01", "123456", "Tran Thi B", "Staff"
        )
        result = self.manager.update_account(
            "staff01", "Tran Thi C", "Manager"
        )
        self.assertEqual(
            result, "Cập nhật thành công!"
        )

    # 5. Kiem tra khoa tai khoan
    def test_lock_account(self):
        self.manager.add_account(
            "staff01", "123456", "Tran Thi B", "Staff"
        )
        self.manager.lock_account("staff01")
        account = self.manager.search_account("staff01")
        self.assertEqual(account.status, "Locked")

    # 6. Kiem tra mo khoa tai khoan
    def test_unlock_account(self):
        self.manager.add_account(
            "staff01", "123456", "Tran Thi B", "Staff"
        )
        self.manager.lock_account("staff01")
        self.manager.unlock_account("staff01")
        account = self.manager.search_account("staff01")
        self.assertEqual(account.status, "Active")


if __name__ == "__main__":
    unittest.main()
