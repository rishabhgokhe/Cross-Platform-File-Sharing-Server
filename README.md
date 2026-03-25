# Cross-Platform File Sharing Server

## Description

Cross-Platform File Sharing Server is a GUI-based file server for Linux and Windows (with optional macOS support) that enables authenticated users to securely upload, download, and manage files over a network. The system emphasizes reliable multi-user access, strong security boundaries, and clear, testable system design.

## Highlights

- Secure authentication and session management
- Multi-user concurrency with safe conflict handling
- Core file operations: upload, download, list, rename, delete
- TLS-ready transport with strict server-side validation
- Auditable activity logging

## Scope

In scope
- Cross-platform desktop GUI client
- Server core for auth, authorization, and file operations
- Protocol definition for client-server communication
- Local storage with metadata management

Out of scope (initial phase)
- Highly stylized UI
- Mobile clients
- Cloud-scale object storage replacement

## System Design

Components
- GUI Client: login, browsing, and file actions
- Server Core: auth, authorization, and file operations
- Protocol Layer: message schemas and transfer semantics
- Storage Layer: deterministic layout, metadata, and integrity checks

Core operations
- Upload files and folders
- Download files and folders
- List directories and metadata
- Rename or move items
- Delete items with optional trash/restore

## Protocol

The protocol separates control messages from file transfer streams and enforces strict validation at the server boundary.

Planned operations
- Authenticate and create session
- List directory contents
- Upload file or folder
- Download file or folder
- Rename or move item
- Delete item
- Query metadata

## Security Model

- Authentication required for every session
- Encrypted communication planned for production use
- Server-side authorization checks on all operations
- Path normalization and input validation to prevent traversal

## Reliability and Concurrency

- Safe concurrent access to shared files
- Clear conflict behavior on simultaneous writes
- Atomic operations where supported by the host OS

## Project Status

Initial scaffolding is in place with early Zig sources and protocol design work underway. Setup instructions will be added once the first runnable prototype is ready.

## Roadmap

- v0.1: Protocol draft and server core skeleton
- v0.2: GUI client MVP
- v0.3: Full file operations and permissions
- v0.4: Security hardening and logging

<!-- author.md-start -->
## 👨🏻‍💻 Author

**Rishabh Gokhe**

![Open Source](https://img.shields.io/badge/Open%20Source-Lover-ff69b4?style=flat) ![Build With ❤️](https://img.shields.io/badge/Built%20With-%E2%9D%A4-red?style=flat)
<!-- author.md-end -->

<!-- about-me.md-start -->
## 🚀 About Me

Hi there! I'm Rishabh Gokhe, a full-stack developer passionate about building scalable, real-time, and user-friendly applications. I focus on crafting seamless digital experiences using modern technologies like WebSockets, React, and Node.js.

I enjoy exploring new ideas, experimenting with emerging tech, and collaborating with like-minded developers. Whether it's web development, UI/UX design, or optimizing performance, I'm always excited to push boundaries and create impactful solutions.

### My Vision

I believe technology should be intuitive, efficient, and accessible. My goal is to develop applications that enhance communication, productivity, and user experience. From real-time interactions to automation, I strive to build solutions that make a difference.

Feel free to reach out—always open to discussions, collaborations, and learning from fellow developers! 🚀
<!-- about-me.md-end -->

<!-- feedback.md-start -->
## 📨 Feedback

Got feedback, suggestions, or ideas? Feel free to reach out! [![Email Me](https://img.shields.io/badge/Email-Me-black?style=flat&logo=gmail&logoColor=white)](mailto:rishabhgokhe20contact@gmail.com)
<!-- feedback.md-end -->

<!-- connect-with-me.md-start -->
## <img src="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExeWxuNTJlaTIwcWp6Mmx4ODl5dXgxbThqNnI5eWh3YmIwMnZhbWp5MyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/7NgYelDPXmzbzxrKsj/giphy.gif" width=40px /> Connect with Me

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/rishabh-gokhe-22168b287)
[![Portfolio](https://img.shields.io/badge/Portfolio-000000?style=for-the-badge&logo=outline&logoColor=white)](https://rishabhgokhe.vercel.app/)
[![LeetCode](https://img.shields.io/badge/LeetCode-FFA116?style=for-the-badge&logo=leetcode&logoColor=white)](https://leetcode.com/u/rishabh_gokhe/)
[![Email](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:rishabhgokhe20contact@gmail.com)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/rishabhgokhe)
[![Twitter](https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=x&logoColor=white)](https://twitter.com/rishabhgokhe)
[![Instagram](https://img.shields.io/badge/Instagram-DD2A7B?style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/rishabh_gokhe)

**Email Address** : [rishabhgokhe20contact@gmail.com](mailto:rishabhgokhe20contact@gmail.com)
<!-- connect-with-me.md-end -->