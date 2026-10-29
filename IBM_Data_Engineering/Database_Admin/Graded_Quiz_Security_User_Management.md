# IBM Relational Database Administration (DBA): Security and User Management

This practice assessment covers essential principles of database security, user management, and data protection, including server operating system hardening, mapping RDBMS roles to operating system groups, SQL privilege revocation, security audit logging, and asymmetric key encryption mechanisms.

---

## Summary of Answers

* **Question 1:** A — Hardened
* **Question 2:** C — Map to OS groups
* **Question 3:** A — Revoke connect
* **Question 4:** B — Identify potential attacks
* **Question 5:** C — Uses two keys: one public, one private

---

### Question 1

*Operating system hardening minimizes security vulnerabilities by removing unnecessary services, closing unused ports, applying least privilege access, and configuring security controls on database servers.*

**The OS for database servers must be secure. Which of the following methods that the video recommends, involves vulnerabilities?**

* **A.** **Hardened** *(Correct)*
* **B.** Regular patching
* **C.** Firewall implementation
* **D.** Access monitoring

---

### Question 2

*When a relational database management system lacks native support for user groups, administrators can map database accounts directly to operating system groups to centralize and simplify access management.*

**When an RDBMS doesn't support user groups, how can you define groups?**

* **A.** Alias accounts
* **B.** Map to user initials
* **C.** **Map to OS groups** *(Correct)*
* **D.** Additional user accounts

---

### Question 3

*In SQL, the `REVOKE` command is used to strip previously granted database privileges or connection rights (such as `REVOKE CONNECT FROM <user>`) from a user, group, or role.*

**Using SQL commands, how can you remove database permissions from a user, group, or role?**

* **A.** **Revoke connect** *(Correct)*
* **B.** Cancel connect
* **C.** Eliminate connect
* **D.** Delete connect

---

### Question 4

*Auditing failed database access attempts helps administrators detect brute-force login attempts, unauthorized access patterns, and potential cyberattacks early.*

**Why should you audit failed attempts to access databases?**

* **A.** Add security levels
* **B.** **Identify potential attacks** *(Correct)*
* **C.** Test database security
* **D.** Identify unauthorized users

---

### Question 5

*Asymmetric encryption (public-key cryptography) utilizes a mathematically linked key pair: a public key used to encrypt data and a private key kept secure to decrypt it.*

**Which of the following is true of asymmetric encryption?**

* **A.** Is more susceptible to compromise than symmetric encryption
* **B.** DES is an example of asymmetric encryption
* **C.** **Uses two keys: one public, one private** *(Correct)*
* **D.** Key is shared with all users
