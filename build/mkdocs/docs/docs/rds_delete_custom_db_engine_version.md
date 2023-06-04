<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_delete_custom_db_engine_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a custom engine version

### Description

Deletes a custom engine version. To run this command, make sure you meet
the following prerequisites:

-   The CEV must not be the default for RDS Custom. If it is, change the
    default before running this command.

-   The CEV must not be associated with an RDS Custom DB instance, RDS
    Custom instance snapshot, or automated backup of your RDS Custom
    instance.

Typically, deletion takes a few minutes.

The MediaImport service that imports files from Amazon S3 to create CEVs
isn't integrated with Amazon Web Services CloudTrail. If you turn on
data logging for Amazon RDS in CloudTrail, calls to the
`DeleteCustomDbEngineVersion` event aren't logged. However, you might
see calls from the API gateway that accesses your Amazon S3 bucket.
These calls originate from the MediaImport service for the
`DeleteCustomDbEngineVersion` event.

For more information, see [Deleting a
CEV](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-cev.html#custom-cev.delete)
in the *Amazon RDS User Guide*.

### Usage

    rds_delete_custom_db_engine_version(Engine, EngineVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_delete_custom_db_engine_version_:_Engine">Engine</code></td>
<td><p>[required] The database engine. The only supported engines are
<code>custom-oracle-ee</code> and
<code>custom-oracle-ee-cdb</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_delete_custom_db_engine_version_:_EngineVersion">EngineVersion</code></td>
<td><p>[required] The custom engine version (CEV) for your DB instance.
This option is required for RDS Custom, but optional for Amazon RDS. The
combination of <code>Engine</code> and <code>EngineVersion</code> is
unique per customer per Amazon Web Services Region.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Engine = "string",
      EngineVersion = "string",
      DBParameterGroupFamily = "string",
      DBEngineDescription = "string",
      DBEngineVersionDescription = "string",
      DefaultCharacterSet = list(
        CharacterSetName = "string",
        CharacterSetDescription = "string"
      ),
      Image = list(
        ImageId = "string",
        Status = "string"
      ),
      DBEngineMediaType = "string",
      SupportedCharacterSets = list(
        list(
          CharacterSetName = "string",
          CharacterSetDescription = "string"
        )
      ),
      SupportedNcharCharacterSets = list(
        list(
          CharacterSetName = "string",
          CharacterSetDescription = "string"
        )
      ),
      ValidUpgradeTarget = list(
        list(
          Engine = "string",
          EngineVersion = "string",
          Description = "string",
          AutoUpgrade = TRUE|FALSE,
          IsMajorVersionUpgrade = TRUE|FALSE,
          SupportedEngineModes = list(
            "string"
          ),
          SupportsParallelQuery = TRUE|FALSE,
          SupportsGlobalDatabases = TRUE|FALSE,
          SupportsBabelfish = TRUE|FALSE
        )
      ),
      SupportedTimezones = list(
        list(
          TimezoneName = "string"
        )
      ),
      ExportableLogTypes = list(
        "string"
      ),
      SupportsLogExportsToCloudwatchLogs = TRUE|FALSE,
      SupportsReadReplica = TRUE|FALSE,
      SupportedEngineModes = list(
        "string"
      ),
      SupportedFeatureNames = list(
        "string"
      ),
      Status = "string",
      SupportsParallelQuery = TRUE|FALSE,
      SupportsGlobalDatabases = TRUE|FALSE,
      MajorEngineVersion = "string",
      DatabaseInstallationFilesS3BucketName = "string",
      DatabaseInstallationFilesS3Prefix = "string",
      DBEngineVersionArn = "string",
      KMSKeyId = "string",
      CreateTime = as.POSIXct(
        "2015-01-01"
      ),
      TagList = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      SupportsBabelfish = TRUE|FALSE,
      CustomDBEngineVersionManifest = "string",
      SupportsCertificateRotationWithoutRestart = TRUE|FALSE,
      SupportedCACertificateIdentifiers = list(
        "string"
      )
    )

### Request syntax

    svc$delete_custom_db_engine_version(
      Engine = "string",
      EngineVersion = "string"
    )
