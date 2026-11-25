
from account_management import AccountManager


def main():
    manager = AccountManager()

    while True:
        print("\n===== QUAN LY TAI KHOAN TRA SUA CHIRODI =====")
        print("1. Them tai khoan")
        print("2. Hien thi danh sach tai khoan")
        print("3. Tim kiem tai khoan")
        print("4. Cap nhat tai khoan")
        print("5. Khoa tai khoan")
        print("6. Mo khoa tai khoan")
        print("0. Thoat")

        choice = input("Chon chuc nang: ")

        if choice == "1":
            username = input("Ten dang nhap: ")
            password = input("Mat khau: ")
            fullname = input("Ho ten: ")
            role = input("Vai tro: ")

            print(manager.add_account(
                username, password, fullname, role
            ))

        elif choice == "2":
            accounts = manager.display_accounts()

            if not accounts:
                print("Chua co tai khoan nao!")

            for account in accounts:
                print(
                    "Username:", account.username,
                    "| Ho ten:", account.fullname,
                    "| Vai tro:", account.role,
                    "| Trang thai:", account.status
                )

        elif choice == "3":
            username = input("Nhap username can tim: ")
            account = manager.search_account(username)

            if account:
                print("Tim thay:", account.fullname)
                print("Vai tro:", account.role)
                print("Trang thai:", account.status)
            else:
                print("Khong tim thay tai khoan!")

        elif choice == "4":
            username = input("Username can sua: ")
            fullname = input("Ho ten moi: ")
            role = input("Vai tro moi: ")

            print(manager.update_account(
                username, fullname, role
            ))

        elif choice == "5":
            username = input("Username can khoa: ")
            print(manager.lock_account(username))

        elif choice == "6":
            username = input("Username can mo khoa: ")
            print(manager.unlock_account(username))

        elif choice == "0":
            print("Ket thuc chuong trinh!")
            break

        else:
            print("Lua chon khong hop le!")


if __name__ == "__main__":
    main()
