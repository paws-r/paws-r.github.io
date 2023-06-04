<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_feature_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use this operation to describe a FeatureGroup

### Description

Use this operation to describe a `FeatureGroup`. The response includes
information on the creation time, `FeatureGroup` name, the unique
identifier for each `FeatureGroup`, and more.

### Usage

    sagemaker_describe_feature_group(FeatureGroupName, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_feature_group_:_FeatureGroupName">FeatureGroupName</code></td>
<td><p>[required] The name of the <code>FeatureGroup</code> you want
described.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_describe_feature_group_:_NextToken">NextToken</code></td>
<td><p>A token to resume pagination of the list of <code>Features</code>
(<code>FeatureDefinitions</code>). 2,500 <code>Features</code> are
returned by default.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FeatureGroupArn = "string",
      FeatureGroupName = "string",
      RecordIdentifierFeatureName = "string",
      EventTimeFeatureName = "string",
      FeatureDefinitions = list(
        list(
          FeatureName = "string",
          FeatureType = "Integral"|"Fractional"|"String"
        )
      ),
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      OnlineStoreConfig = list(
        SecurityConfig = list(
          KmsKeyId = "string"
        ),
        EnableOnlineStore = TRUE|FALSE
      ),
      OfflineStoreConfig = list(
        S3StorageConfig = list(
          S3Uri = "string",
          KmsKeyId = "string",
          ResolvedOutputS3Uri = "string"
        ),
        DisableGlueTableCreation = TRUE|FALSE,
        DataCatalogConfig = list(
          TableName = "string",
          Catalog = "string",
          Database = "string"
        ),
        TableFormat = "Glue"|"Iceberg"
      ),
      RoleArn = "string",
      FeatureGroupStatus = "Creating"|"Created"|"CreateFailed"|"Deleting"|"DeleteFailed",
      OfflineStoreStatus = list(
        Status = "Active"|"Blocked"|"Disabled",
        BlockedReason = "string"
      ),
      LastUpdateStatus = list(
        Status = "Successful"|"Failed"|"InProgress",
        FailureReason = "string"
      ),
      FailureReason = "string",
      Description = "string",
      NextToken = "string",
      OnlineStoreTotalSizeBytes = 123
    )

### Request syntax

    svc$describe_feature_group(
      FeatureGroupName = "string",
      NextToken = "string"
    )
