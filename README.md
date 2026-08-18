&#x20;🔐 DevSecOps Secure CI/CD Pipeline



A production-style \*\*DevSecOps CI/CD project\*\* for a Python Flask application.



This project integrates \*\*continuous integration, security scanning, containerization, infrastructure as code, container registry, and cloud deployment\*\* into a single workflow.



\---



\## 📌 Project Overview



The main objective of this project is to implement security throughout the software delivery lifecycle instead of performing security checks only after deployment.



The application goes through:



1\. Source code management using GitHub

2\. Automated testing using Pytest

3\. Dependency vulnerability scanning using pip-audit

4\. Secret detection using Gitleaks

5\. Static code analysis using SonarQube

6\. Docker containerization

7\. Container vulnerability scanning using Trivy

8\. Docker image publishing to Docker Hub

9\. Infrastructure provisioning using Terraform

10\. Automated application deployment on AWS EC2



\---



\# 🏗️ Architecture



```text

&#x20;                   Developer

&#x20;                       |

&#x20;                       | git push

&#x20;                       v

&#x20;               +----------------+

&#x20;               | GitHub Repo    |

&#x20;               +----------------+

&#x20;                       |

&#x20;                       v

&#x20;             +-------------------+

&#x20;             | GitHub Actions    |

&#x20;             +-------------------+

&#x20;                       |

&#x20;       +---------------+---------------+

&#x20;       |               |               |

&#x20;       v               v               v

&#x20;    Pytest         pip-audit        Gitleaks

&#x20;       |               |               |

&#x20;       +---------------+---------------+

&#x20;                       |

&#x20;                       v

&#x20;                 SonarQube

&#x20;                       |

&#x20;                       v

&#x20;                Docker Build

&#x20;                       |

&#x20;                       v

&#x20;                   Trivy

&#x20;                       |

&#x20;                       v

&#x20;                 Docker Hub

&#x20;                       |

&#x20;                       v

&#x20;               Terraform / AWS

&#x20;                       |

&#x20;                       v

&#x20;                  AWS EC2

&#x20;                       |

&#x20;                       v

&#x20;                Docker Container

&#x20;                       |

&#x20;                       v

&#x20;                 Flask App

