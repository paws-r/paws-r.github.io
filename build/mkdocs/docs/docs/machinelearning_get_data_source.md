<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_get_data_source</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a DataSource that includes metadata and data file information, as well as the current status of the DataSource

### Description

Returns a `DataSource` that includes metadata and data file information,
as well as the current status of the `DataSource`.

`get_data_source` provides results in normal or verbose format. The
verbose format adds the schema description and the list of files pointed
to by the DataSource to the normal format.

### Usage

    machinelearning_get_data_source(DataSourceId, Verbose)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="machinelearning_get_data_source_:_DataSourceId">DataSourceId</code></td>
<td><p>[required] The ID assigned to the <code>DataSource</code> at
creation.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_get_data_source_:_Verbose">Verbose</code></td>
<td><p>Specifies whether the <code>get_data_source</code> operation
should return <code>DataSourceSchema</code>.</p>
<p>If true, <code>DataSourceSchema</code> is returned.</p>
<p>If false, <code>DataSourceSchema</code> is not returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

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
      LogUri = "string",
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
      ),
      DataSourceSchema = "string"
    )

### Request syntax

    svc$get_data_source(
      DataSourceId = "string",
      Verbose = TRUE|FALSE
    )
