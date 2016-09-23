29 SEPTEMBER 2016: PostgreSQL 9.6, the latest version of the world's leading open source SQL database, was released today by the PostgreSQL Global Development Group.  This release will allow users to both scale up and scale out high performance database workloads.  New features include parallel query, synchronous replication improvements, phrase search, and improvements to performance and usability.

Scale Up with Parallel Query
----------------------------

Version 9.6 adds support for parallelizing some query operations, enabling utilization of several or all of the cores on a server to return query results faster.  This release includes parallel sequential (table) scan, aggregation, and joins.  Depending on details and available cores, parallelism can speed up big data queries by as much as 32 times faster.

"I migrated our entire genomics data platform - all 25 billion legacy MySQL rows of it - to a single Postgres database, leveraging the row compression abilities of the JSONB datatype, and the excellent GIN, BRIN, and B-tree indexing modes. Now with version 9.6, I expect to harness the parallel query functionality to allow even greater scalability for queries against our rather large tables," said Mike Sofen, Chief Database Architect, Synthetic Genomics.

Scale Out with Synchronous Replication and postgres_fdw
-------------------------------------------------------

Two new options have been added to PostgreSQL's synchronous replication feature which allow it to be used to maintain consistent reads across database clusters.  First, it now allows configuring groups of synchronous replicas.  Second, the "remote_apply" mode creates a more consistent view of data across multiple nodes.  These features support using built-in replication to maintain a set of "identical" nodes for load-balancing read workloads.

The PostgreSQL-to-PostgreSQL data federation driver, postgres_fdw, has new capabilities to execute work on remote servers.  By "pushing down" sorts, joins, and batch data updates, users can distribute workload across multiple PostgreSQL servers.  These features should soon be added to other FDW drivers.

"With the capabilities of remote JOIN, UPDATE and DELETE, Foreign Data
Wrappers are now a complete solution for sharing data between other
databases and PostgreSQL.  For example, PostgreSQL can be used to handle
data input going to two or more different kinds of databases," said
Julyanto Sutandang, Director of Business Solutions at Equnix.

Better Text Search with Phrases
-------------------------------

PostgreSQL's full text search feature now supports "phrase search." This lets users search for exact phrases, or for words within a specified proximity to each other, using fast GIN indexes.  Combined with new features for fine-tuning text search options, PostgreSQL is the superior option for "hybrid search" which puts together relational, JSON, and full text searching.

Smoother, Faster, and Easier to Use
-----------------------------------

Thanks to feedback and testing by PostgreSQL users with high-volume production databases, the project has been able to improve many aspects of performance and usability in this release.  Replication, aggregation, indexing, sorting, and stored procedures have all been made more efficient, and PostgreSQL now makes better use of resources with recent Linux kernels.  Administration overhead for large tables and complex workloads was also reduced, especially through improvements to VACUUM.

Links
-----

* [Downloads](https://www.postgresql.org/downloads)
* [Press Kit](https://www.postgresql.org/about/press/presskit96)
* [Release Notes](https://www.postgresql.org/docs/current/static/release-9-6.html)
* [What's New in 9.6](https://wiki.postgresql.org/wiki/NewIn96)

About PostgreSQL
----------------

PostgreSQL is the most advanced open source database system, with a global community of thousands of users and contributors and dozens of companies and organizations.  The PostgreSQL Project builds on over 30 years of engineering, starting at the University of California, Berkeley, and has an unmatched pace of development today. PostgreSQL's mature feature set not only matches top proprietary database systems, but exceeds them in advanced database features, extensibility, security and stability.  Learn more about PostgreSQL and participate in our community [PostgreSQL.org](https://www.postgresql.org).
