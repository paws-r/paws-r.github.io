<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_import_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new custom model that replicates a source custom model that you import

### Description

Creates a new custom model that replicates a source custom model that
you import. The source model can be in your Amazon Web Services account
or another one.

If the source model is in another Amazon Web Services account, then it
must have a resource-based policy that authorizes you to import it.

The source model must be in the same Amazon Web Services Region that
you're using when you import. You can't import a model that's in a
different Region.

### Usage

    comprehend_import_model(SourceModelArn, ModelName, VersionName,
      ModelKmsKeyId, DataAccessRoleArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_import_model_:_SourceModelArn">SourceModelArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the custom model to
import.</p></td>
</tr>
<tr class="even">
<td><code id="comprehend_import_model_:_ModelName">ModelName</code></td>
<td><p>The name to assign to the custom model that is created in Amazon
Comprehend by this import.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_import_model_:_VersionName">VersionName</code></td>
<td><p>The version name given to the custom model that is created by
this import. Version names can have a maximum of 256 characters.
Alphanumeric characters, hyphens (-) and underscores (_) are allowed.
The version name must be unique among all models with the same
classifier name in the account/Region.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_import_model_:_ModelKmsKeyId">ModelKmsKeyId</code></td>
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
id="comprehend_import_model_:_DataAccessRoleArn">DataAccessRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM role that grants Amazon
Comprehend permission to use Amazon Key Management Service (KMS) to
encrypt or decrypt the custom model.</p></td>
</tr>
<tr class="even">
<td><code id="comprehend_import_model_:_Tags">Tags</code></td>
<td><p>Tags to associate with the custom model that is created by this
import. A tag is a key-value pair that adds as a metadata to a resource
used by Amazon Comprehend. For example, a tag with "Sales" as the key
might be added to a resource to indicate its use by the sales
department.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModelArn = "string"
    )

### Request syntax

    svc$import_model(
      SourceModelArn = "string",
      ModelName = "string",
      VersionName = "string",
      ModelKmsKeyId = "string",
      DataAccessRoleArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
