<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_get_credentials</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a database user name and temporary password with temporary authorization to log in to Amazon Redshift Serverless

### Description

Returns a database user name and temporary password with temporary
authorization to log in to Amazon Redshift Serverless.

By default, the temporary credentials expire in 900 seconds. You can
optionally specify a duration between 900 seconds (15 minutes) and 3600
seconds (60 minutes).

     <p>The Identity and Access Management (IAM) user or role that runs GetCredentials must have an IAM policy attached that allows access to all necessary actions and resources.</p> <p>If the <code>DbName</code> parameter is specified, the IAM policy must allow access to the resource dbname for the specified database name.</p> 

### Usage

    redshiftserverless_get_credentials(dbName, durationSeconds,
      workgroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_get_credentials_:_dbName">dbName</code></td>
<td><p>The name of the database to get temporary authorization to log on
to.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be 1 to 64 alphanumeric characters or hyphens.</p></li>
<li><p>Must contain only uppercase or lowercase letters, numbers,
underscore, plus sign, period (dot), at symbol (@), or hyphen.</p></li>
<li><p>The first character must be a letter.</p></li>
<li><p>Must not contain a colon ( : ) or slash ( / ).</p></li>
<li><p>Cannot be a reserved word. A list of reserved words can be found
in <a
href="https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved
Words</a> in the Amazon Redshift Database Developer Guide</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_get_credentials_:_durationSeconds">durationSeconds</code></td>
<td><p>The number of seconds until the returned temporary password
expires. The minimum is 900 seconds, and the maximum is 3600
seconds.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_get_credentials_:_workgroupName">workgroupName</code></td>
<td><p>[required] The name of the workgroup associated with the
database.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      dbPassword = "string",
      dbUser = "string",
      expiration = as.POSIXct(
        "2015-01-01"
      ),
      nextRefreshTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_credentials(
      dbName = "string",
      durationSeconds = 123,
      workgroupName = "string"
    )
