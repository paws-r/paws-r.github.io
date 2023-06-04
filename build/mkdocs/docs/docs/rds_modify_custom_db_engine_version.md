<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_modify_custom_db_engine_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the status of a custom engine version (CEV)

### Description

Modifies the status of a custom engine version (CEV). You can find CEVs
to modify by calling `describe_db_engine_versions`.

The MediaImport service that imports files from Amazon S3 to create CEVs
isn't integrated with Amazon Web Services CloudTrail. If you turn on
data logging for Amazon RDS in CloudTrail, calls to the
`ModifyCustomDbEngineVersion` event aren't logged. However, you might
see calls from the API gateway that accesses your Amazon S3 bucket.
These calls originate from the MediaImport service for the
`ModifyCustomDbEngineVersion` event.

For more information, see [Modifying CEV
status](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-cev.html#custom-cev.modify)
in the *Amazon RDS User Guide*.

### Usage

    rds_modify_custom_db_engine_version(Engine, EngineVersion, Description,
      Status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_modify_custom_db_engine_version_:_Engine">Engine</code></td>
<td><p>[required] The DB engine. The only supported values are
<code>custom-oracle-ee</code> and
<code>custom-oracle-ee-cdb</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_custom_db_engine_version_:_EngineVersion">EngineVersion</code></td>
<td><p>[required] The custom engine version (CEV) that you want to
modify. This option is required for RDS Custom for Oracle, but optional
for Amazon RDS. The combination of <code>Engine</code> and
<code>EngineVersion</code> is unique per customer per Amazon Web
Services Region.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_modify_custom_db_engine_version_:_Description">Description</code></td>
<td><p>An optional description of your CEV.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_custom_db_engine_version_:_Status">Status</code></td>
<td><p>The availability status to be assigned to the CEV. Valid values
are as follows:</p>
<p><strong>available</strong></p>
<p>You can use this CEV to create a new RDS Custom DB instance.</p>
<p><strong>inactive</strong></p>
<p>You can create a new RDS Custom instance by restoring a DB snapshot
with this CEV. You can't patch or create new instances with this
CEV.</p>
<p>You can change any status to any status. A typical reason to change
status is to prevent the accidental use of a CEV, or to make a
deprecated CEV eligible for use again. For example, you might change the
status of your CEV from <code>available</code> to <code>inactive</code>,
and from <code>inactive</code> back to <code>available</code>. To change
the availability status of the CEV, it must not currently be in use by
an RDS Custom instance, snapshot, or automated backup.</p></td>
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

    svc$modify_custom_db_engine_version(
      Engine = "string",
      EngineVersion = "string",
      Description = "string",
      Status = "available"|"inactive"|"inactive-except-restore"
    )
