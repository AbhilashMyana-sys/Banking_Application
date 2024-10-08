package register;

public class AccountDetails {
    private String accountNumber;
    private String fullName;
    private String address;
    private String emailId;
    private String account;
    private String balance;
    private String dob;
    private String phone;

    public AccountDetails(String accountNumber, String fullName, String address, String emailId,
                          String account, String balance, String dob, String phone) {
        this.accountNumber = accountNumber;
        this.fullName = fullName;
        this.address = address;
        this.emailId = emailId;
        this.account = account;
        this.balance = balance;
        this.dob = dob;
        this.phone = phone;
    }

    public String getAccountNumber() {
        return accountNumber;
    }

    public String getFullName() {
        return fullName;
    }

    public String getAddress() {
        return address;
    }

    public String getEmailId() {
        return emailId;
    }

    public String getAccount() {
        return account;
    }

    public String getBalance() {
        return balance;
    }

    public String getDob() {
        return dob;
    }
    
    public String getPhone() {
        return phone;
    }
}
