<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_create_entity_recognizer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an entity recognizer using submitted files

### Description

Creates an entity recognizer using submitted files. After your
`create_entity_recognizer` request is submitted, you can check job
status using the `describe_entity_recognizer` API.

### Usage

    comprehend_create_entity_recognizer(RecognizerName, VersionName,
      DataAccessRoleArn, Tags, InputDataConfig, ClientRequestToken,
      LanguageCode, VolumeKmsKeyId, VpcConfig, ModelKmsKeyId, ModelPolicy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_create_entity_recognizer_:_RecognizerName">RecognizerName</code></td>
<td><p>[required] The name given to the newly created recognizer.
Recognizer names can be a maximum of 256 characters. Alphanumeric
characters, hyphens (-) and underscores (_) are allowed. The name must
be unique in the account/Region.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_create_entity_recognizer_:_VersionName">VersionName</code></td>
<td><p>The version name given to the newly created recognizer. Version
names can be a maximum of 256 characters. Alphanumeric characters,
hyphens (-) and underscores (_) are allowed. The version name must be
unique among all models with the same recognizer name in the
account/Region.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_create_entity_recognizer_:_DataAccessRoleArn">DataAccessRoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM role that
grants Amazon Comprehend read access to your input data.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_create_entity_recognizer_:_Tags">Tags</code></td>
<td><p>Tags to associate with the entity recognizer. A tag is a
key-value pair that adds as a metadata to a resource used by Amazon
Comprehend. For example, a tag with "Sales" as the key might be added to
a resource to indicate its use by the sales department.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_create_entity_recognizer_:_InputDataConfig">InputDataConfig</code></td>
<td><p>[required] Specifies the format and location of the input data.
The S3 bucket containing the input data must be located in the same
Region as the entity recognizer being created.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_create_entity_recognizer_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique identifier for the request. If you don't set the client
request token, Amazon Comprehend generates one.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_create_entity_recognizer_:_LanguageCode">LanguageCode</code></td>
<td><p>[required] You can specify any of the following languages:
English ("en"), Spanish ("es"), French ("fr"), Italian ("it"), German
("de"), or Portuguese ("pt"). If you plan to use this entity recognizer
with PDF, Word, or image input files, you must specify English as the
language. All training documents must be in the same language.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_create_entity_recognizer_:_VolumeKmsKeyId">VolumeKmsKeyId</code></td>
<td><p>ID for the Amazon Web Services Key Management Service (KMS) key
that Amazon Comprehend uses to encrypt data on the storage volume
attached to the ML compute instance(s) that process the analysis job.
The VolumeKmsKeyId can be either of the following formats:</p>
<ul>
<li><p>KMS Key ID:
<code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code></p></li>
<li><p>Amazon Resource Name (ARN) of a KMS Key:
<code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_create_entity_recognizer_:_VpcConfig">VpcConfig</code></td>
<td><p>Configuration parameters for an optional private Virtual Private
Cloud (VPC) containing the resources you are using for your custom
entity recognizer. For more information, see <a
href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
VPC</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_create_entity_recognizer_:_ModelKmsKeyId">ModelKmsKeyId</code></td>
<td><p>ID for the KMS key that Amazon Comprehend uses to encrypt trained
custom models. The ModelKmsKeyId can be either of the following
formats:</p>
<ul>
<li><p>KMS Key ID:
<code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code></p></li>
<li><p>Amazon Resource Name (ARN) of a KMS Key:
<code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_create_entity_recognizer_:_ModelPolicy">ModelPolicy</code></td>
<td><p>The JSON resource-based policy to attach to your custom entity
recognizer model. You can use this policy to allow another Amazon Web
Services account to import your custom model.</p>
<p>Provide your JSON as a UTF-8 encoded string without line breaks. To
provide valid JSON for your policy, enclose the attribute names and
values in double quotes. If the JSON body is also enclosed in double
quotes, then you must escape the double quotes that are inside the
policy:</p>
<p><code
style="white-space: pre;">⁠"{\"attribute\": \"value\", \"attribute\": [\"value\"]}"⁠</code></p>
<p>To avoid escaping quotes, you can use single quotes to enclose the
policy and double quotes to enclose the JSON names and values:</p>
<p><code>'{"attribute": "value", "attribute": ["value"]}'</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EntityRecognizerArn = "string"
    )

### Request syntax

    svc$create_entity_recognizer(
      RecognizerName = "string",
      VersionName = "string",
      DataAccessRoleArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      InputDataConfig = list(
        DataFormat = "COMPREHEND_CSV"|"AUGMENTED_MANIFEST",
        EntityTypes = list(
          list(
            Type = "string"
          )
        ),
        Documents = list(
          S3Uri = "string",
          TestS3Uri = "string",
          InputFormat = "ONE_DOC_PER_FILE"|"ONE_DOC_PER_LINE"
        ),
        Annotations = list(
          S3Uri = "string",
          TestS3Uri = "string"
        ),
        EntityList = list(
          S3Uri = "string"
        ),
        AugmentedManifests = list(
          list(
            S3Uri = "string",
            Split = "TRAIN"|"TEST",
            AttributeNames = list(
              "string"
            ),
            AnnotationDataS3Uri = "string",
            SourceDocumentsS3Uri = "string",
            DocumentType = "PLAIN_TEXT_DOCUMENT"|"SEMI_STRUCTURED_DOCUMENT"
          )
        )
      ),
      ClientRequestToken = "string",
      LanguageCode = "en"|"es"|"fr"|"de"|"it"|"pt"|"ar"|"hi"|"ja"|"ko"|"zh"|"zh-TW",
      VolumeKmsKeyId = "string",
      VpcConfig = list(
        SecurityGroupIds = list(
          "string"
        ),
        Subnets = list(
          "string"
        )
      ),
      ModelKmsKeyId = "string",
      ModelPolicy = "string"
    )
