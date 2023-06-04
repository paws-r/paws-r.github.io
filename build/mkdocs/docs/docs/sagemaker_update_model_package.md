<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_model_package</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a versioned model

### Description

Updates a versioned model.

### Usage

    sagemaker_update_model_package(ModelPackageArn, ModelApprovalStatus,
      ApprovalDescription, CustomerMetadataProperties,
      CustomerMetadataPropertiesToRemove,
      AdditionalInferenceSpecificationsToAdd)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_model_package_:_ModelPackageArn">ModelPackageArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the model
package.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_model_package_:_ModelApprovalStatus">ModelApprovalStatus</code></td>
<td><p>The approval status of the model.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_model_package_:_ApprovalDescription">ApprovalDescription</code></td>
<td><p>A description for the approval status of the model.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_model_package_:_CustomerMetadataProperties">CustomerMetadataProperties</code></td>
<td><p>The metadata properties associated with the model package
versions.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_model_package_:_CustomerMetadataPropertiesToRemove">CustomerMetadataPropertiesToRemove</code></td>
<td><p>The metadata properties associated with the model package
versions to remove.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_model_package_:_AdditionalInferenceSpecificationsToAdd">AdditionalInferenceSpecificationsToAdd</code></td>
<td><p>An array of additional Inference Specification objects to be
added to the existing array additional Inference Specification. Total
number of additional Inference Specifications can not exceed 15. Each
additional Inference Specification specifies artifacts based on this
model package that can be used on inference endpoints. Generally used
with SageMaker Neo to store the compiled artifacts.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModelPackageArn = "string"
    )

### Request syntax

    svc$update_model_package(
      ModelPackageArn = "string",
      ModelApprovalStatus = "Approved"|"Rejected"|"PendingManualApproval",
      ApprovalDescription = "string",
      CustomerMetadataProperties = list(
        "string"
      ),
      CustomerMetadataPropertiesToRemove = list(
        "string"
      ),
      AdditionalInferenceSpecificationsToAdd = list(
        list(
          Name = "string",
          Description = "string",
          Containers = list(
            list(
              ContainerHostname = "string",
              Image = "string",
              ImageDigest = "string",
              ModelDataUrl = "string",
              ProductId = "string",
              Environment = list(
                "string"
              ),
              ModelInput = list(
                DataInputConfig = "string"
              ),
              Framework = "string",
              FrameworkVersion = "string",
              NearestModelName = "string"
            )
          ),
          SupportedTransformInstanceTypes = list(
            "ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"
          ),
          SupportedRealtimeInferenceInstanceTypes = list(
            "ml.t2.medium"|"ml.t2.large"|"ml.t2.xlarge"|"ml.t2.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.12xlarge"|"ml.m5d.24xlarge"|"ml.c4.large"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5d.large"|"ml.c5d.xlarge"|"ml.c5d.2xlarge"|"ml.c5d.4xlarge"|"ml.c5d.9xlarge"|"ml.c5d.18xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.12xlarge"|"ml.r5.24xlarge"|"ml.r5d.large"|"ml.r5d.xlarge"|"ml.r5d.2xlarge"|"ml.r5d.4xlarge"|"ml.r5d.12xlarge"|"ml.r5d.24xlarge"|"ml.inf1.xlarge"|"ml.inf1.2xlarge"|"ml.inf1.6xlarge"|"ml.inf1.24xlarge"|"ml.c6i.large"|"ml.c6i.xlarge"|"ml.c6i.2xlarge"|"ml.c6i.4xlarge"|"ml.c6i.8xlarge"|"ml.c6i.12xlarge"|"ml.c6i.16xlarge"|"ml.c6i.24xlarge"|"ml.c6i.32xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.12xlarge"|"ml.g5.16xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.p4d.24xlarge"|"ml.c7g.large"|"ml.c7g.xlarge"|"ml.c7g.2xlarge"|"ml.c7g.4xlarge"|"ml.c7g.8xlarge"|"ml.c7g.12xlarge"|"ml.c7g.16xlarge"|"ml.m6g.large"|"ml.m6g.xlarge"|"ml.m6g.2xlarge"|"ml.m6g.4xlarge"|"ml.m6g.8xlarge"|"ml.m6g.12xlarge"|"ml.m6g.16xlarge"|"ml.m6gd.large"|"ml.m6gd.xlarge"|"ml.m6gd.2xlarge"|"ml.m6gd.4xlarge"|"ml.m6gd.8xlarge"|"ml.m6gd.12xlarge"|"ml.m6gd.16xlarge"|"ml.c6g.large"|"ml.c6g.xlarge"|"ml.c6g.2xlarge"|"ml.c6g.4xlarge"|"ml.c6g.8xlarge"|"ml.c6g.12xlarge"|"ml.c6g.16xlarge"|"ml.c6gd.large"|"ml.c6gd.xlarge"|"ml.c6gd.2xlarge"|"ml.c6gd.4xlarge"|"ml.c6gd.8xlarge"|"ml.c6gd.12xlarge"|"ml.c6gd.16xlarge"|"ml.c6gn.large"|"ml.c6gn.xlarge"|"ml.c6gn.2xlarge"|"ml.c6gn.4xlarge"|"ml.c6gn.8xlarge"|"ml.c6gn.12xlarge"|"ml.c6gn.16xlarge"|"ml.r6g.large"|"ml.r6g.xlarge"|"ml.r6g.2xlarge"|"ml.r6g.4xlarge"|"ml.r6g.8xlarge"|"ml.r6g.12xlarge"|"ml.r6g.16xlarge"|"ml.r6gd.large"|"ml.r6gd.xlarge"|"ml.r6gd.2xlarge"|"ml.r6gd.4xlarge"|"ml.r6gd.8xlarge"|"ml.r6gd.12xlarge"|"ml.r6gd.16xlarge"|"ml.p4de.24xlarge"|"ml.trn1.2xlarge"|"ml.trn1.32xlarge"|"ml.inf2.xlarge"|"ml.inf2.8xlarge"|"ml.inf2.24xlarge"|"ml.inf2.48xlarge"
          ),
          SupportedContentTypes = list(
            "string"
          ),
          SupportedResponseMIMETypes = list(
            "string"
          )
        )
      )
    )
