<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_feature_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a new FeatureGroup

### Description

Create a new `FeatureGroup`. A `FeatureGroup` is a group of `Features`
defined in the `FeatureStore` to describe a `Record`.

The `FeatureGroup` defines the schema and features contained in the
FeatureGroup. A `FeatureGroup` definition is composed of a list of
`Features`, a `RecordIdentifierFeatureName`, an `EventTimeFeatureName`
and configurations for its `OnlineStore` and `OfflineStore`. Check
[Amazon Web Services service
quotas](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html)
to see the `FeatureGroup`s quota for your Amazon Web Services account.

You must include at least one of `OnlineStoreConfig` and
`OfflineStoreConfig` to create a `FeatureGroup`.

### Usage

    sagemaker_create_feature_group(FeatureGroupName,
      RecordIdentifierFeatureName, EventTimeFeatureName, FeatureDefinitions,
      OnlineStoreConfig, OfflineStoreConfig, RoleArn, Description, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_feature_group_:_FeatureGroupName">FeatureGroupName</code></td>
<td><p>[required] The name of the <code>FeatureGroup</code>. The name
must be unique within an Amazon Web Services Region in an Amazon Web
Services account. The name:</p>
<ul>
<li><p>Must start and end with an alphanumeric character.</p></li>
<li><p>Can only contain alphanumeric character and hyphens. Spaces are
not allowed.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_feature_group_:_RecordIdentifierFeatureName">RecordIdentifierFeatureName</code></td>
<td><p>[required] The name of the <code>Feature</code> whose value
uniquely identifies a <code>Record</code> defined in the
<code>FeatureStore</code>. Only the latest record per identifier value
will be stored in the <code>OnlineStore</code>.
<code>RecordIdentifierFeatureName</code> must be one of feature
definitions' names.</p>
<p>You use the <code>RecordIdentifierFeatureName</code> to access data
in a <code>FeatureStore</code>.</p>
<p>This name:</p>
<ul>
<li><p>Must start and end with an alphanumeric character.</p></li>
<li><p>Can only contains alphanumeric characters, hyphens, underscores.
Spaces are not allowed.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_feature_group_:_EventTimeFeatureName">EventTimeFeatureName</code></td>
<td><p>[required] The name of the feature that stores the
<code>EventTime</code> of a <code>Record</code> in a
<code>FeatureGroup</code>.</p>
<p>An <code>EventTime</code> is a point in time when a new event occurs
that corresponds to the creation or update of a <code>Record</code> in a
<code>FeatureGroup</code>. All <code>Records</code> in the
<code>FeatureGroup</code> must have a corresponding
<code>EventTime</code>.</p>
<p>An <code>EventTime</code> can be a <code>String</code> or
<code>Fractional</code>.</p>
<ul>
<li><p><code>Fractional</code>: <code>EventTime</code> feature values
must be a Unix timestamp in seconds.</p></li>
<li><p><code>String</code>: <code>EventTime</code> feature values must
be an ISO-8601 string in the format. The following formats are supported
<code style="white-space: pre;">⁠yyyy-MM-dd'T'HH:mm:ssZ⁠</code> and <code
style="white-space: pre;">⁠yyyy-MM-dd'T'HH:mm:ss.SSSZ⁠</code> where
<code>yyyy</code>, <code>MM</code>, and <code>dd</code> represent the
year, month, and day respectively and <code>HH</code>, <code>mm</code>,
<code>ss</code>, and if applicable, <code>SSS</code> represent the hour,
month, second and milliseconds respsectively. <code>'T'</code> and
<code>Z</code> are constants.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_feature_group_:_FeatureDefinitions">FeatureDefinitions</code></td>
<td><p>[required] A list of <code>Feature</code> names and types.
<code>Name</code> and <code>Type</code> is compulsory per
<code>Feature</code>.</p>
<p>Valid feature <code>FeatureType</code>s are <code>Integral</code>,
<code>Fractional</code> and <code>String</code>.</p>
<p><code>FeatureName</code>s cannot be any of the following:
<code>is_deleted</code>, <code>write_time</code>,
<code>api_invocation_time</code></p>
<p>You can create up to 2,500 <code>FeatureDefinition</code>s per
<code>FeatureGroup</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_feature_group_:_OnlineStoreConfig">OnlineStoreConfig</code></td>
<td><p>You can turn the <code>OnlineStore</code> on or off by specifying
<code>True</code> for the <code>EnableOnlineStore</code> flag in
<code>OnlineStoreConfig</code>.</p>
<p>You can also include an Amazon Web Services KMS key ID
(<code>KMSKeyId</code>) for at-rest encryption of the
<code>OnlineStore</code>.</p>
<p>The default value is <code>False</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_feature_group_:_OfflineStoreConfig">OfflineStoreConfig</code></td>
<td><p>Use this to configure an <code>OfflineFeatureStore</code>. This
parameter allows you to specify:</p>
<ul>
<li><p>The Amazon Simple Storage Service (Amazon S3) location of an
<code>OfflineStore</code>.</p></li>
<li><p>A configuration for an Amazon Web Services Glue or Amazon Web
Services Hive data catalog.</p></li>
<li><p>An KMS encryption key to encrypt the Amazon S3 location used for
<code>OfflineStore</code>. If KMS encryption key is not specified, by
default we encrypt all data at rest using Amazon Web Services KMS key.
By defining your <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucket-key.html">bucket-level
key</a> for SSE, you can reduce Amazon Web Services KMS requests costs
by up to 99 percent.</p></li>
<li><p>Format for the offline store table. Supported formats are Glue
(Default) and <a href="https://iceberg.apache.org/">Apache
Iceberg</a>.</p></li>
</ul>
<p>To learn more about this parameter, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_OfflineStoreConfig.html">OfflineStoreConfig</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_feature_group_:_RoleArn">RoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM execution role used to
persist data into the <code>OfflineStore</code> if an
<code>OfflineStoreConfig</code> is provided.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_feature_group_:_Description">Description</code></td>
<td><p>A free-form description of a <code>FeatureGroup</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_create_feature_group_:_Tags">Tags</code></td>
<td><p>Tags used to identify <code>Features</code> in each
<code>FeatureGroup</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FeatureGroupArn = "string"
    )

### Request syntax

    svc$create_feature_group(
      FeatureGroupName = "string",
      RecordIdentifierFeatureName = "string",
      EventTimeFeatureName = "string",
      FeatureDefinitions = list(
        list(
          FeatureName = "string",
          FeatureType = "Integral"|"Fractional"|"String"
        )
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
      Description = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
