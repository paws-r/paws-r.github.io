<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_create_document_classifier</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new document classifier that you can use to categorize documents

### Description

Creates a new document classifier that you can use to categorize
documents. To create a classifier, you provide a set of training
documents that are labeled with the categories that you want to use. For
more information, see [Training classifier
models](https://docs.aws.amazon.com/comprehend/latest/dg/training-classifier-model.html)
in the Comprehend Developer Guide.

### Usage

    comprehend_create_document_classifier(DocumentClassifierName,
      VersionName, DataAccessRoleArn, Tags, InputDataConfig, OutputDataConfig,
      ClientRequestToken, LanguageCode, VolumeKmsKeyId, VpcConfig, Mode,
      ModelKmsKeyId, ModelPolicy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_create_document_classifier_:_DocumentClassifierName">DocumentClassifierName</code></td>
<td><p>[required] The name of the document classifier.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_create_document_classifier_:_VersionName">VersionName</code></td>
<td><p>The version name given to the newly created classifier. Version
names can have a maximum of 256 characters. Alphanumeric characters,
hyphens (-) and underscores (_) are allowed. The version name must be
unique among all models with the same classifier name in the Amazon Web
Services account/Amazon Web Services Region.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_create_document_classifier_:_DataAccessRoleArn">DataAccessRoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM role that
grants Amazon Comprehend read access to your input data.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_create_document_classifier_:_Tags">Tags</code></td>
<td><p>Tags to associate with the document classifier. A tag is a
key-value pair that adds as a metadata to a resource used by Amazon
Comprehend. For example, a tag with "Sales" as the key might be added to
a resource to indicate its use by the sales department.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_create_document_classifier_:_InputDataConfig">InputDataConfig</code></td>
<td><p>[required] Specifies the format and location of the input data
for the job.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_create_document_classifier_:_OutputDataConfig">OutputDataConfig</code></td>
<td><p>Specifies the location for the output files from a custom
classifier job. This parameter is required for a request that creates a
native classifier model.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_create_document_classifier_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique identifier for the request. If you don't set the client
request token, Amazon Comprehend generates one.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_create_document_classifier_:_LanguageCode">LanguageCode</code></td>
<td><p>[required] The language of the input documents. You can specify
any of the languages supported by Amazon Comprehend. All documents must
be in the same language.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_create_document_classifier_:_VolumeKmsKeyId">VolumeKmsKeyId</code></td>
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
<tr class="even">
<td><code
id="comprehend_create_document_classifier_:_VpcConfig">VpcConfig</code></td>
<td><p>Configuration parameters for an optional private Virtual Private
Cloud (VPC) containing the resources you are using for your custom
classifier. For more information, see <a
href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
VPC</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_create_document_classifier_:_Mode">Mode</code></td>
<td><p>Indicates the mode in which the classifier will be trained. The
classifier can be trained in multi-class mode, which identifies one and
only one class for each document, or multi-label mode, which identifies
one or more labels for each document. In multi-label mode, multiple
labels for an individual document are separated by a delimiter. The
default delimiter between labels is a pipe (|).</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_create_document_classifier_:_ModelKmsKeyId">ModelKmsKeyId</code></td>
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
id="comprehend_create_document_classifier_:_ModelPolicy">ModelPolicy</code></td>
<td><p>The resource-based policy to attach to your custom document
classifier model. You can use this policy to allow another Amazon Web
Services account to import your custom model.</p>
<p>Provide your policy as a JSON body that you enter as a UTF-8 encoded
string without line breaks. To provide valid JSON, enclose the attribute
names and values in double quotes. If the JSON body is also enclosed in
double quotes, then you must escape the double quotes that are inside
the policy:</p>
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
      DocumentClassifierArn = "string"
    )

### Request syntax

    svc$create_document_classifier(
      DocumentClassifierName = "string",
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
        S3Uri = "string",
        TestS3Uri = "string",
        LabelDelimiter = "string",
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
        ),
        DocumentType = "PLAIN_TEXT_DOCUMENT"|"SEMI_STRUCTURED_DOCUMENT",
        Documents = list(
          S3Uri = "string",
          TestS3Uri = "string"
        ),
        DocumentReaderConfig = list(
          DocumentReadAction = "TEXTRACT_DETECT_DOCUMENT_TEXT"|"TEXTRACT_ANALYZE_DOCUMENT",
          DocumentReadMode = "SERVICE_DEFAULT"|"FORCE_DOCUMENT_READ_ACTION",
          FeatureTypes = list(
            "TABLES"|"FORMS"
          )
        )
      ),
      OutputDataConfig = list(
        S3Uri = "string",
        KmsKeyId = "string",
        FlywheelStatsS3Prefix = "string"
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
      Mode = "MULTI_CLASS"|"MULTI_LABEL",
      ModelKmsKeyId = "string",
      ModelPolicy = "string"
    )
