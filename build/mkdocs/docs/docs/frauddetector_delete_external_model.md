<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_delete_external_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a SageMaker model from Amazon Fraud Detector

### Description

Removes a SageMaker model from Amazon Fraud Detector.

You can remove an Amazon SageMaker model if it is not associated with a
detector version. Removing a SageMaker model disconnects it from Amazon
Fraud Detector, but the model remains available in SageMaker.

### Usage

    frauddetector_delete_external_model(modelEndpoint)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_delete_external_model_:_modelEndpoint">modelEndpoint</code></td>
<td><p>[required] The endpoint of the Amazon Sagemaker model to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_external_model(
      modelEndpoint = "string"
    )
