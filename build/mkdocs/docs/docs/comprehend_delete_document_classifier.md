<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_delete_document_classifier</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a previously created document classifier

### Description

Deletes a previously created document classifier

Only those classifiers that are in terminated states (IN\_ERROR,
TRAINED) will be deleted. If an active inference job is using the model,
a `ResourceInUseException` will be returned.

This is an asynchronous action that puts the classifier into a DELETING
state, and it is then removed by a background job. Once removed, the
classifier disappears from your account and is no longer available for
use.

### Usage

    comprehend_delete_document_classifier(DocumentClassifierArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_delete_document_classifier_:_DocumentClassifierArn">DocumentClassifierArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that identifies the
document classifier.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_document_classifier(
      DocumentClassifierArn = "string"
    )
