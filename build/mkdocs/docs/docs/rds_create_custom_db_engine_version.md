<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_create_custom_db_engine_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a custom DB engine version (CEV)

### Description

Creates a custom DB engine version (CEV).

### Usage

    rds_create_custom_db_engine_version(Engine, EngineVersion,
      DatabaseInstallationFilesS3BucketName,
      DatabaseInstallationFilesS3Prefix, ImageId, KMSKeyId, Description,
      Manifest, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_create_custom_db_engine_version_:_Engine">Engine</code></td>
<td><p>[required] The database engine to use for your custom engine
version (CEV). The only supported value is
<code>custom-oracle-ee</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_custom_db_engine_version_:_EngineVersion">EngineVersion</code></td>
<td><p>[required] The name of your CEV. The name format is
19.<em>customized_string</em>. For example, a valid CEV name is <code
style="white-space: pre;">⁠19.my_cev1⁠</code>. This setting is required
for RDS Custom for Oracle, but optional for Amazon RDS. The combination
of <code>Engine</code> and <code>EngineVersion</code> is unique per
customer per Region.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_custom_db_engine_version_:_DatabaseInstallationFilesS3BucketName">DatabaseInstallationFilesS3BucketName</code></td>
<td><p>The name of an Amazon S3 bucket that contains database
installation files for your CEV. For example, a valid bucket name is
<code>my-custom-installation-files</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_custom_db_engine_version_:_DatabaseInstallationFilesS3Prefix">DatabaseInstallationFilesS3Prefix</code></td>
<td><p>The Amazon S3 directory that contains the database installation
files for your CEV. For example, a valid bucket name is
<code>123456789012/cev1</code>. If this setting isn't specified, no
prefix is assumed.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_custom_db_engine_version_:_ImageId">ImageId</code></td>
<td><p>The ID of the Amazon Machine Image (AMI). For RDS Custom for SQL
Server, an AMI ID is required to create a CEV. For RDS Custom for
Oracle, the default is the most recent AMI available, but you can
specify an AMI ID that was used in a different Oracle CEV. Find the AMIs
used by your CEVs by calling the
<code>describe_db_engine_versions</code> operation.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_custom_db_engine_version_:_KMSKeyId">KMSKeyId</code></td>
<td><p>The Amazon Web Services KMS key identifier for an encrypted CEV.
A symmetric encryption KMS key is required for RDS Custom, but optional
for Amazon RDS.</p>
<p>If you have an existing symmetric encryption KMS key in your account,
you can use it with RDS Custom. No further action is necessary. If you
don't already have a symmetric encryption KMS key in your account,
follow the instructions in <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html#create-symmetric-cmk">Creating
a symmetric encryption KMS key</a> in the <em>Amazon Web Services Key
Management Service Developer Guide</em>.</p>
<p>You can choose the same symmetric encryption key when you create a
CEV and a DB instance, or choose different keys.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_custom_db_engine_version_:_Description">Description</code></td>
<td><p>An optional description of your CEV.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_custom_db_engine_version_:_Manifest">Manifest</code></td>
<td><p>The CEV manifest, which is a JSON document that describes the
installation .zip files stored in Amazon S3. Specify the name/value
pairs in a file or a quoted string. RDS Custom applies the patches in
the order in which they are listed.</p>
<p>The following JSON fields are valid:</p>
<p><strong>MediaImportTemplateVersion</strong></p>
<p>Version of the CEV manifest. The date is in the format
<code>YYYY-MM-DD</code>.</p>
<p><strong>databaseInstallationFileNames</strong></p>
<p>Ordered list of installation files for the CEV.</p>
<p><strong>opatchFileNames</strong></p>
<p>Ordered list of OPatch installers used for the Oracle DB engine.</p>
<p><strong>psuRuPatchFileNames</strong></p>
<p>The PSU and RU patches for this CEV.</p>
<p><strong>OtherPatchFileNames</strong></p>
<p>The patches that are not in the list of PSU and RU patches. Amazon
RDS applies these patches after applying the PSU and RU patches.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-cev.html#custom-cev.preparing.manifest">Creating
the CEV manifest</a> in the <em>Amazon RDS User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_custom_db_engine_version_:_Tags">Tags</code></td>
<td></td>
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

    svc$create_custom_db_engine_version(
      Engine = "string",
      EngineVersion = "string",
      DatabaseInstallationFilesS3BucketName = "string",
      DatabaseInstallationFilesS3Prefix = "string",
      ImageId = "string",
      KMSKeyId = "string",
      Description = "string",
      Manifest = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
