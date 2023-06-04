<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_describe_data_sources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of DataSource that match the search criteria in the request

### Description

Returns a list of `DataSource` that match the search criteria in the
request.

### Usage

    machinelearning_describe_data_sources(FilterVariable, EQ, GT, LT, GE,
      LE, NE, Prefix, SortOrder, NextToken, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="machinelearning_describe_data_sources_:_FilterVariable">FilterVariable</code></td>
<td><p>Use one of the following variables to filter a list of
<code>DataSource</code>:</p>
<ul>
<li><p><code>CreatedAt</code> - Sets the search criteria to
<code>DataSource</code> creation dates.</p></li>
<li><p><code>Status</code> - Sets the search criteria to
<code>DataSource</code> statuses.</p></li>
<li><p><code>Name</code> - Sets the search criteria to the contents of
<code>DataSource</code> <code>Name</code>.</p></li>
<li><p><code>DataUri</code> - Sets the search criteria to the URI of
data files used to create the <code>DataSource</code>. The URI can
identify either a file or an Amazon Simple Storage Service (Amazon S3)
bucket or directory.</p></li>
<li><p><code>IAMUser</code> - Sets the search criteria to the user
account that invoked the <code>DataSource</code> creation.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="machinelearning_describe_data_sources_:_EQ">EQ</code></td>
<td><p>The equal to operator. The <code>DataSource</code> results will
have <code>FilterVariable</code> values that exactly match the value
specified with <code>EQ</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="machinelearning_describe_data_sources_:_GT">GT</code></td>
<td><p>The greater than operator. The <code>DataSource</code> results
will have <code>FilterVariable</code> values that are greater than the
value specified with <code>GT</code>.</p></td>
</tr>
<tr class="even">
<td><code id="machinelearning_describe_data_sources_:_LT">LT</code></td>
<td><p>The less than operator. The <code>DataSource</code> results will
have <code>FilterVariable</code> values that are less than the value
specified with <code>LT</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="machinelearning_describe_data_sources_:_GE">GE</code></td>
<td><p>The greater than or equal to operator. The
<code>DataSource</code> results will have <code>FilterVariable</code>
values that are greater than or equal to the value specified with
<code>GE</code>.</p></td>
</tr>
<tr class="even">
<td><code id="machinelearning_describe_data_sources_:_LE">LE</code></td>
<td><p>The less than or equal to operator. The <code>DataSource</code>
results will have <code>FilterVariable</code> values that are less than
or equal to the value specified with <code>LE</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="machinelearning_describe_data_sources_:_NE">NE</code></td>
<td><p>The not equal to operator. The <code>DataSource</code> results
will have <code>FilterVariable</code> values not equal to the value
specified with <code>NE</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_describe_data_sources_:_Prefix">Prefix</code></td>
<td><p>A string that is found at the beginning of a variable, such as
<code>Name</code> or <code>Id</code>.</p>
<p>For example, a <code>DataSource</code> could have the
<code>Name</code> <code>2014-09-09-HolidayGiftMailer</code>. To search
for this <code>DataSource</code>, select <code>Name</code> for the
<code>FilterVariable</code> and any of the following strings for the
<code>Prefix</code>:</p>
<ul>
<li><p>2014-09</p></li>
<li><p>2014-09-09</p></li>
<li><p>2014-09-09-Holiday</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="machinelearning_describe_data_sources_:_SortOrder">SortOrder</code></td>
<td><p>A two-value parameter that determines the sequence of the
resulting list of <code>DataSource</code>.</p>
<ul>
<li><p><code>asc</code> - Arranges the list in ascending order (A-Z,
0-9).</p></li>
<li><p><code>dsc</code> - Arranges the list in descending order (Z-A,
9-0).</p></li>
</ul>
<p>Results are sorted by <code>FilterVariable</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_describe_data_sources_:_NextToken">NextToken</code></td>
<td><p>The ID of the page in the paginated results.</p></td>
</tr>
<tr class="odd">
<td><code
id="machinelearning_describe_data_sources_:_Limit">Limit</code></td>
<td><p>The maximum number of <code>DataSource</code> to include in the
result.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Results = list(
        list(
          DataSourceId = "string",
          DataLocationS3 = "string",
          DataRearrangement = "string",
          CreatedByIamUser = "string",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          DataSizeInBytes = 123,
          NumberOfFiles = 123,
          Name = "string",
          Status = "PENDING"|"INPROGRESS"|"FAILED"|"COMPLETED"|"DELETED",
          Message = "string",
          RedshiftMetadata = list(
            RedshiftDatabase = list(
              DatabaseName = "string",
              ClusterIdentifier = "string"
            ),
            DatabaseUserName = "string",
            SelectSqlQuery = "string"
          ),
          RDSMetadata = list(
            Database = list(
              InstanceIdentifier = "string",
              DatabaseName = "string"
            ),
            DatabaseUserName = "string",
            SelectSqlQuery = "string",
            ResourceRole = "string",
            ServiceRole = "string",
            DataPipelineId = "string"
          ),
          RoleARN = "string",
          ComputeStatistics = TRUE|FALSE,
          ComputeTime = 123,
          FinishedAt = as.POSIXct(
            "2015-01-01"
          ),
          StartedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_data_sources(
      FilterVariable = "CreatedAt"|"LastUpdatedAt"|"Status"|"Name"|"DataLocationS3"|"IAMUser",
      EQ = "string",
      GT = "string",
      LT = "string",
      GE = "string",
      LE = "string",
      NE = "string",
      Prefix = "string",
      SortOrder = "asc"|"dsc",
      NextToken = "string",
      Limit = 123
    )
