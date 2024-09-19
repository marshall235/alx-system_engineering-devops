# Postmortem: Database Outage on Web Stack

## Issue Summary

- **Duration:** September 14, 2024, 14:30 - 15:45 (EAT)
- **Impact:** The primary database server experienced an outage, resulting in the main web application being down for 75 minutes. Users encountered 500 Internal Server Errors when trying to access the application. Approximately 90% of users were affected.
- **Root Cause:** A misconfigured database index led to a deadlock situation, causing queries to hang and preventing normal operations.

## Timeline

- **14:30:** Issue detected by monitoring alert indicating increased response times and database query failures.
- **14:35:** Engineering team notified via alert system.
- **14:40:** Initial investigation focused on application logs, revealing repeated database timeouts.
- **14:50:** Investigations erroneously considered network issues and recent server updates, which were ruled out.
- **15:00:** Incident escalated to the database team for deeper analysis.
- **15:20:** Database team identified a deadlock caused by an index misconfiguration.
- **15:30:** Issue resolved by removing the faulty index and optimizing the database schema.
- **15:45:** Service fully restored and normal operations resumed.

## Root Cause and Resolution

- **Root Cause:** The outage was caused by a misconfigured index on a frequently queried table. The incorrect index definition led to high contention and deadlocks under load.
- **Resolution:** The faulty index was removed and the database schema was optimized. Changes were applied during a brief maintenance window, and post-resolution monitoring ensured stability.

## Corrective and Preventative Measures

### Improvements

- **Database Index Management:** Implement stricter review processes for database schema changes.
- **Monitoring Enhancements:** Upgrade monitoring and alerting systems to better detect and address deadlock situations.
- **Testing Procedures:** Enhance testing procedures for database schema changes, including load and stress testing.

### Tasks

- **Review Database Indexes:** Audit all current database indexes and configurations to identify and correct potential issues.
- **Patch Monitoring System:** Update the monitoring system to include alerts for deadlock conditions and performance issues.
- **Update Documentation:** Document the incident thoroughly, including root cause, resolution steps, and preventative measures.
- **Schedule Training:** Arrange training for database and engineering teams on best practices for index management and deadlock resolution.

## Conclusion

This postmortem outlines the details of the database outage, including the impact, timeline of events, root cause, and resolution. The incident highlighted areas for improvement in index management and monitoring practices. By addressing these issues, we aim to enhance the reliability and performance of our web stack.
