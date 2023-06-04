<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_create_relational_database</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new database in Amazon Lightsail

### Description

Creates a new database in Amazon Lightsail.

The `⁠create relational database⁠` operation supports tag-based access
control via request tags. For more information, see the Amazon Lightsail
Developer Guide.

### Usage

    lightsail_create_relational_database(relationalDatabaseName,
      availabilityZone, relationalDatabaseBlueprintId,
      relationalDatabaseBundleId, masterDatabaseName, masterUsername,
      masterUserPassword, preferredBackupWindow, preferredMaintenanceWindow,
      publiclyAccessible, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_create_relational_database_:_relationalDatabaseName">relationalDatabaseName</code></td>
<td><p>[required] The name to use for your new Lightsail database
resource.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 2 to 255 alphanumeric characters, or
hyphens.</p></li>
<li><p>The first and last character must be a letter or number.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_relational_database_:_availabilityZone">availabilityZone</code></td>
<td><p>The Availability Zone in which to create your new database. Use
the <code style="white-space: pre;">⁠us-east-2a⁠</code> case-sensitive
format.</p>
<p>You can get a list of Availability Zones by using the <code
style="white-space: pre;">⁠get regions⁠</code> operation. Be sure to add
the <code
style="white-space: pre;">⁠include relational database Availability Zones⁠</code>
parameter to your request.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_relational_database_:_relationalDatabaseBlueprintId">relationalDatabaseBlueprintId</code></td>
<td><p>[required] The blueprint ID for your new database. A blueprint
describes the major engine version of a database.</p>
<p>You can get a list of database blueprints IDs by using the <code
style="white-space: pre;">⁠get relational database blueprints⁠</code>
operation.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_relational_database_:_relationalDatabaseBundleId">relationalDatabaseBundleId</code></td>
<td><p>[required] The bundle ID for your new database. A bundle
describes the performance specifications for your database.</p>
<p>You can get a list of database bundle IDs by using the <code
style="white-space: pre;">⁠get relational database bundles⁠</code>
operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_relational_database_:_masterDatabaseName">masterDatabaseName</code></td>
<td><p>[required] The meaning of this parameter differs according to the
database engine you use.</p>
<p><strong>MySQL</strong></p>
<p>The name of the database to create when the Lightsail database
resource is created. If this parameter isn't specified, no database is
created in the database resource.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain 1 to 64 letters or numbers.</p></li>
<li><p>Must begin with a letter. Subsequent characters can be letters,
underscores, or digits (0- 9).</p></li>
<li><p>Can't be a word reserved by the specified database engine.</p>
<p>For more information about reserved words in MySQL, see the Keywords
and Reserved Words articles for <a
href="https://dev.mysql.com/doc/refman/8.0/en/keywords.html">MySQL
5.6</a>, <a
href="https://dev.mysql.com/doc/refman/5.7/en/keywords.html">MySQL
5.7</a>, and <a
href="https://dev.mysql.com/doc/refman/8.0/en/keywords.html">MySQL
8.0</a>.</p></li>
</ul>
<p><strong>PostgreSQL</strong></p>
<p>The name of the database to create when the Lightsail database
resource is created. If this parameter isn't specified, a database named
<code>postgres</code> is created in the database resource.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain 1 to 63 letters or numbers.</p></li>
<li><p>Must begin with a letter. Subsequent characters can be letters,
underscores, or digits (0- 9).</p></li>
<li><p>Can't be a word reserved by the specified database engine.</p>
<p>For more information about reserved words in PostgreSQL, see the SQL
Key Words articles for <a
href="https://www.postgresql.org/docs/9.6/sql-keywords-appendix.html">PostgreSQL
9.6</a>, <a
href="https://www.postgresql.org/docs/10/sql-keywords-appendix.html">PostgreSQL
10</a>, <a
href="https://www.postgresql.org/docs/11/sql-keywords-appendix.html">PostgreSQL
11</a>, and <a
href="https://www.postgresql.org/docs/12/sql-keywords-appendix.html">PostgreSQL
12</a>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_relational_database_:_masterUsername">masterUsername</code></td>
<td><p>[required] The name for the master user.</p>
<p><strong>MySQL</strong></p>
<p>Constraints:</p>
<ul>
<li><p>Required for MySQL.</p></li>
<li><p>Must be 1 to 16 letters or numbers. Can contain
underscores.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Can't be a reserved word for the chosen database engine.</p>
<p>For more information about reserved words in MySQL 5.6 or 5.7, see
the Keywords and Reserved Words articles for <a
href="https://dev.mysql.com/doc/refman/8.0/en/keywords.html">MySQL
5.6</a>, <a
href="https://dev.mysql.com/doc/refman/5.7/en/keywords.html">MySQL
5.7</a>, or <a
href="https://dev.mysql.com/doc/refman/8.0/en/keywords.html">MySQL
8.0</a>.</p></li>
</ul>
<p><strong>PostgreSQL</strong></p>
<p>Constraints:</p>
<ul>
<li><p>Required for PostgreSQL.</p></li>
<li><p>Must be 1 to 63 letters or numbers. Can contain
underscores.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Can't be a reserved word for the chosen database engine.</p>
<p>For more information about reserved words in MySQL 5.6 or 5.7, see
the Keywords and Reserved Words articles for <a
href="https://www.postgresql.org/docs/9.6/sql-keywords-appendix.html">PostgreSQL
9.6</a>, <a
href="https://www.postgresql.org/docs/10/sql-keywords-appendix.html">PostgreSQL
10</a>, <a
href="https://www.postgresql.org/docs/11/sql-keywords-appendix.html">PostgreSQL
11</a>, and <a
href="https://www.postgresql.org/docs/12/sql-keywords-appendix.html">PostgreSQL
12</a>.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_relational_database_:_masterUserPassword">masterUserPassword</code></td>
<td><p>The password for the master user. The password can include any
printable ASCII character except "/", """, or "@". It cannot contain
spaces.</p>
<p><strong>MySQL</strong></p>
<p>Constraints: Must contain from 8 to 41 characters.</p>
<p><strong>PostgreSQL</strong></p>
<p>Constraints: Must contain from 8 to 128 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_relational_database_:_preferredBackupWindow">preferredBackupWindow</code></td>
<td><p>The daily time range during which automated backups are created
for your new database if automated backups are enabled.</p>
<p>The default is a 30-minute window selected at random from an 8-hour
block of time for each AWS Region. For more information about the
preferred backup window time blocks for each region, see the <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow">Working
With Backups</a> guide in the Amazon Relational Database Service
documentation.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be in the <code>hh24:mi-hh24:mi</code> format.</p>
<p>Example: <code>16:00-16:30</code></p></li>
<li><p>Specified in Coordinated Universal Time (UTC).</p></li>
<li><p>Must not conflict with the preferred maintenance window.</p></li>
<li><p>Must be at least 30 minutes.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_relational_database_:_preferredMaintenanceWindow">preferredMaintenanceWindow</code></td>
<td><p>The weekly time range during which system maintenance can occur
on your new database.</p>
<p>The default is a 30-minute window selected at random from an 8-hour
block of time for each AWS Region, occurring on a random day of the
week.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be in the <code>ddd:hh24:mi-ddd:hh24:mi</code>
format.</p></li>
<li><p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p></li>
<li><p>Must be at least 30 minutes.</p></li>
<li><p>Specified in Coordinated Universal Time (UTC).</p></li>
<li><p>Example: <code>Tue:17:00-Tue:17:30</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_relational_database_:_publiclyAccessible">publiclyAccessible</code></td>
<td><p>Specifies the accessibility options for your new database. A
value of <code>true</code> specifies a database that is available to
resources outside of your Lightsail account. A value of
<code>false</code> specifies a database that is available only to your
Lightsail resources in the same region as your database.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_relational_database_:_tags">tags</code></td>
<td><p>The tag keys and optional values to add to the resource during
create.</p>
<p>Use the <code>tag_resource</code> action to tag a resource after it's
created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      operations = list(
        list(
          id = "string",
          resourceName = "string",
          resourceType = "ContainerService"|"Instance"|"StaticIp"|"KeyPair"|"InstanceSnapshot"|"Domain"|"PeeredVpc"|"LoadBalancer"|"LoadBalancerTlsCertificate"|"Disk"|"DiskSnapshot"|"RelationalDatabase"|"RelationalDatabaseSnapshot"|"ExportSnapshotRecord"|"CloudFormationStackRecord"|"Alarm"|"ContactMethod"|"Distribution"|"Certificate"|"Bucket",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          location = list(
            availabilityZone = "string",
            regionName = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"ca-central-1"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"ap-northeast-2"|"eu-north-1"
          ),
          isTerminal = TRUE|FALSE,
          operationDetails = "string",
          operationType = "DeleteKnownHostKeys"|"DeleteInstance"|"CreateInstance"|"StopInstance"|"StartInstance"|"RebootInstance"|"OpenInstancePublicPorts"|"PutInstancePublicPorts"|"CloseInstancePublicPorts"|"AllocateStaticIp"|"ReleaseStaticIp"|"AttachStaticIp"|"DetachStaticIp"|"UpdateDomainEntry"|"DeleteDomainEntry"|"CreateDomain"|"DeleteDomain"|"CreateInstanceSnapshot"|"DeleteInstanceSnapshot"|"CreateInstancesFromSnapshot"|"CreateLoadBalancer"|"DeleteLoadBalancer"|"AttachInstancesToLoadBalancer"|"DetachInstancesFromLoadBalancer"|"UpdateLoadBalancerAttribute"|"CreateLoadBalancerTlsCertificate"|"DeleteLoadBalancerTlsCertificate"|"AttachLoadBalancerTlsCertificate"|"CreateDisk"|"DeleteDisk"|"AttachDisk"|"DetachDisk"|"CreateDiskSnapshot"|"DeleteDiskSnapshot"|"CreateDiskFromSnapshot"|"CreateRelationalDatabase"|"UpdateRelationalDatabase"|"DeleteRelationalDatabase"|"CreateRelationalDatabaseFromSnapshot"|"CreateRelationalDatabaseSnapshot"|"DeleteRelationalDatabaseSnapshot"|"UpdateRelationalDatabaseParameters"|"StartRelationalDatabase"|"RebootRelationalDatabase"|"StopRelationalDatabase"|"EnableAddOn"|"DisableAddOn"|"PutAlarm"|"GetAlarms"|"DeleteAlarm"|"TestAlarm"|"CreateContactMethod"|"GetContactMethods"|"SendContactMethodVerification"|"DeleteContactMethod"|"CreateDistribution"|"UpdateDistribution"|"DeleteDistribution"|"ResetDistributionCache"|"AttachCertificateToDistribution"|"DetachCertificateFromDistribution"|"UpdateDistributionBundle"|"SetIpAddressType"|"CreateCertificate"|"DeleteCertificate"|"CreateContainerService"|"UpdateContainerService"|"DeleteContainerService"|"CreateContainerServiceDeployment"|"CreateContainerServiceRegistryLogin"|"RegisterContainerImage"|"DeleteContainerImage"|"CreateBucket"|"DeleteBucket"|"CreateBucketAccessKey"|"DeleteBucketAccessKey"|"UpdateBucketBundle"|"UpdateBucket"|"SetResourceAccessForBucket"|"UpdateInstanceMetadataOptions"|"StartGUISession"|"StopGUISession",
          status = "NotStarted"|"Started"|"Failed"|"Completed"|"Succeeded",
          statusChangedAt = as.POSIXct(
            "2015-01-01"
          ),
          errorCode = "string",
          errorDetails = "string"
        )
      )
    )

### Request syntax

    svc$create_relational_database(
      relationalDatabaseName = "string",
      availabilityZone = "string",
      relationalDatabaseBlueprintId = "string",
      relationalDatabaseBundleId = "string",
      masterDatabaseName = "string",
      masterUsername = "string",
      masterUserPassword = "string",
      preferredBackupWindow = "string",
      preferredMaintenanceWindow = "string",
      publiclyAccessible = TRUE|FALSE,
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
