<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_create_index</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon Kendra index

### Description

Creates an Amazon Kendra index. Index creation is an asynchronous API.
To determine if index creation has completed, check the `Status` field
returned from a call to `describe_index`. The `Status` field is set to
`ACTIVE` when the index is ready to use.

Once the index is active you can index your documents using the
`batch_put_document` API or using one of the supported data sources.

For an example of creating an index and data source using the Python
SDK, see [Getting started with Python
SDK](https://docs.aws.amazon.com/kendra/latest/dg/gs-python.html). For
an example of creating an index and data source using the Java SDK, see
[Getting started with Java
SDK](https://docs.aws.amazon.com/kendra/latest/dg/gs-java.html).

### Usage

    kendra_create_index(Name, Edition, RoleArn,
      ServerSideEncryptionConfiguration, Description, ClientToken, Tags,
      UserTokenConfigurations, UserContextPolicy,
      UserGroupResolutionConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_create_index_:_Name">Name</code></td>
<td><p>[required] A name for the index.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_create_index_:_Edition">Edition</code></td>
<td><p>The Amazon Kendra edition to use for the index. Choose
<code>DEVELOPER_EDITION</code> for indexes intended for development,
testing, or proof of concept. Use <code>ENTERPRISE_EDITION</code> for
production. Once you set the edition for an index, it can't be
changed.</p>
<p>The <code>Edition</code> parameter is optional. If you don't supply a
value, the default is <code>ENTERPRISE_EDITION</code>.</p>
<p>For more information on quota limits for Enterprise and Developer
editions, see <a
href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="kendra_create_index_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of an IAM role with
permission to access your Amazon CloudWatch logs and metrics. For more
information, see <a
href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM
access roles for Amazon Kendra</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_create_index_:_ServerSideEncryptionConfiguration">ServerSideEncryptionConfiguration</code></td>
<td><p>The identifier of the KMS customer managed key (CMK) that's used
to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support
asymmetric CMKs.</p></td>
</tr>
<tr class="odd">
<td><code id="kendra_create_index_:_Description">Description</code></td>
<td><p>A description for the index.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_create_index_:_ClientToken">ClientToken</code></td>
<td><p>A token that you provide to identify the request to create an
index. Multiple calls to the <code>create_index</code> API with the same
client token will create only one index.</p></td>
</tr>
<tr class="odd">
<td><code id="kendra_create_index_:_Tags">Tags</code></td>
<td><p>A list of key-value pairs that identify or categorize the index.
You can also use tags to help control access to the index. Tag keys and
values can consist of Unicode letters, digits, white space, and any of
the following symbols: _ . : / = + - @.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_create_index_:_UserTokenConfigurations">UserTokenConfigurations</code></td>
<td><p>The user token configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_create_index_:_UserContextPolicy">UserContextPolicy</code></td>
<td><p>The user context policy.</p>
<p><strong>ATTRIBUTE_FILTER</strong></p>
<p>All indexed content is searchable and displayable for all users. If
you want to filter search results on user context, you can use the
attribute filters of <code style="white-space: pre;">⁠_user_id⁠</code> and
<code style="white-space: pre;">⁠_group_ids⁠</code> or you can provide
user and group information in <code>UserContext</code>.</p>
<p><strong>USER_TOKEN</strong></p>
<p>Enables token-based user access control to filter search results on
user context. All documents with no access control and all documents
accessible to the user will be searchable and displayable.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_create_index_:_UserGroupResolutionConfiguration">UserGroupResolutionConfiguration</code></td>
<td><p>Gets users and groups from IAM Identity Center (successor to
Single Sign-On) identity source. To configure this, see <a
href="https://docs.aws.amazon.com/kendra/latest/APIReference/API_UserGroupResolutionConfiguration.html">UserGroupResolutionConfiguration</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Id = "string"
    )

### Request syntax

    svc$create_index(
      Name = "string",
      Edition = "DEVELOPER_EDITION"|"ENTERPRISE_EDITION",
      RoleArn = "string",
      ServerSideEncryptionConfiguration = list(
        KmsKeyId = "string"
      ),
      Description = "string",
      ClientToken = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      UserTokenConfigurations = list(
        list(
          JwtTokenTypeConfiguration = list(
            KeyLocation = "URL"|"SECRET_MANAGER",
            URL = "string",
            SecretManagerArn = "string",
            UserNameAttributeField = "string",
            GroupAttributeField = "string",
            Issuer = "string",
            ClaimRegex = "string"
          ),
          JsonTokenTypeConfiguration = list(
            UserNameAttributeField = "string",
            GroupAttributeField = "string"
          )
        )
      ),
      UserContextPolicy = "ATTRIBUTE_FILTER"|"USER_TOKEN",
      UserGroupResolutionConfiguration = list(
        UserGroupResolutionMode = "AWS_SSO"|"NONE"
      )
    )
