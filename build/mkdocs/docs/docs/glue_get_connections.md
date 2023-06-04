<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_connections</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of connection definitions from the Data Catalog

### Description

Retrieves a list of connection definitions from the Data Catalog.

### Usage

    glue_get_connections(CatalogId, Filter, HidePassword, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_connections_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog in which the connections reside. If
none is provided, the Amazon Web Services account ID is used by
default.</p></td>
</tr>
<tr class="even">
<td><code id="glue_get_connections_:_Filter">Filter</code></td>
<td><p>A filter that controls which connections are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_get_connections_:_HidePassword">HidePassword</code></td>
<td><p>Allows you to retrieve the connection metadata without returning
the password. For instance, the Glue console uses this flag to retrieve
the connection, and does not display the password. Set this parameter
when the caller might not have permission to use the KMS key to decrypt
the password, but it does have permission to access the rest of the
connection properties.</p></td>
</tr>
<tr class="even">
<td><code id="glue_get_connections_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is a continuation call.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_get_connections_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of connections to return in one
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConnectionList = list(
        list(
          Name = "string",
          Description = "string",
          ConnectionType = "JDBC"|"SFTP"|"MONGODB"|"KAFKA"|"NETWORK"|"MARKETPLACE"|"CUSTOM",
          MatchCriteria = list(
            "string"
          ),
          ConnectionProperties = list(
            "string"
          ),
          PhysicalConnectionRequirements = list(
            SubnetId = "string",
            SecurityGroupIdList = list(
              "string"
            ),
            AvailabilityZone = "string"
          ),
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedBy = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_connections(
      CatalogId = "string",
      Filter = list(
        MatchCriteria = list(
          "string"
        ),
        ConnectionType = "JDBC"|"SFTP"|"MONGODB"|"KAFKA"|"NETWORK"|"MARKETPLACE"|"CUSTOM"
      ),
      HidePassword = TRUE|FALSE,
      NextToken = "string",
      MaxResults = 123
    )
