<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an endpoint using the endpoint configuration specified in the request

### Description

Creates an endpoint using the endpoint configuration specified in the
request. SageMaker uses the endpoint to provision resources and deploy
models. You create the endpoint configuration with the
`create_endpoint_config` API.

Use this API to deploy models using SageMaker hosting services.

For an example that calls this method when deploying a model to
SageMaker hosting services, see the [Create Endpoint example
notebook.](https://github.com/aws/amazon-sagemaker-examples/blob/main/sagemaker-fundamentals/create-endpoint/create_endpoint.ipynb)

You must not delete an `EndpointConfig` that is in use by an endpoint
that is live or while the `update_endpoint` or `create_endpoint`
operations are being performed on the endpoint. To update an endpoint,
you must create a new `EndpointConfig`.

The endpoint name must be unique within an Amazon Web Services Region in
your Amazon Web Services account.

When it receives the request, SageMaker creates the endpoint, launches
the resources (ML compute instances), and deploys the model(s) on them.

When you call `create_endpoint`, a load call is made to DynamoDB to
verify that your endpoint configuration exists. When you read data from
a DynamoDB table supporting
[`⁠Eventually Consistent Reads⁠`](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadConsistency.html)
, the response might not reflect the results of a recently completed
write operation. The response might include some stale data. If the
dependent entities are not yet in DynamoDB, this causes a validation
error. If you repeat your read request after a short time, the response
should return the latest data. So retry logic is recommended to handle
these possible issues. We also recommend that customers call
`describe_endpoint_config` before calling `create_endpoint` to minimize
the potential impact of a DynamoDB eventually consistent read.

When SageMaker receives the request, it sets the endpoint status to
`Creating`. After it creates the endpoint, it sets the status to
`InService`. SageMaker can then process incoming requests for
inferences. To check the status of an endpoint, use the
`describe_endpoint` API.

If any of the models hosted at this endpoint get model data from an
Amazon S3 location, SageMaker uses Amazon Web Services Security Token
Service to download model artifacts from the S3 path you provided.
Amazon Web Services STS is activated in your Amazon Web Services account
by default. If you previously deactivated Amazon Web Services STS for a
region, you need to reactivate Amazon Web Services STS for that region.
For more information, see [Activating and Deactivating Amazon Web
Services STS in an Amazon Web Services
Region](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
in the *Amazon Web Services Identity and Access Management User Guide*.

To add the IAM role policies for using this API operation, go to the IAM
console, and choose Roles in the left navigation pane. Search the IAM
role that you want to grant access to use the `create_endpoint` and
`create_endpoint_config` API operations, add the following policies to
the role.

-   Option 1: For a full SageMaker access, search and attach the
    `AmazonSageMakerFullAccess` policy.

-   Option 2: For granting a limited access to an IAM role, paste the
    following Action elements manually into the JSON file of the IAM
    role:

    `⁠"Action": ["sagemaker:CreateEndpoint", "sagemaker:CreateEndpointConfig"]⁠`

    `⁠"Resource": [⁠`

    `"arn:aws:sagemaker:region:account-id:endpoint/endpointName"`

    `"arn:aws:sagemaker:region:account-id:endpoint-config/endpointConfigName"`

    `⁠]⁠`

    For more information, see [SageMaker API Permissions: Actions,
    Permissions, and Resources
    Reference](https://docs.aws.amazon.com/sagemaker/latest/dg/api-permissions-reference.html).

\['

    `"arn:aws:sagemaker:region:account-id:endpoint/endpointName"`

    `"arn:aws:sagemaker:region:account-id:endpoint-config/endpointConfigName"`

    `]: R:%60%0A%0A%20%20%20%20%60%22arn:aws:sagemaker:region:account-id:endpoint/endpointName%22%60%0A%0A%20%20%20%20%60%22arn:aws:sagemaker:region:account-id:endpoint-config/endpointConfigName%22%60%0A%0A%20%20%20%20%60

### Usage

    sagemaker_create_endpoint(EndpointName, EndpointConfigName,
      DeploymentConfig, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_endpoint_:_EndpointName">EndpointName</code></td>
<td><p>[required] The name of the endpoint.The name must be unique
within an Amazon Web Services Region in your Amazon Web Services
account. The name is case-insensitive in <code>create_endpoint</code>,
but the case is preserved and must be matched in <a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_runtime_InvokeEndpoint.html">InvokeEndpoint</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_endpoint_:_EndpointConfigName">EndpointConfigName</code></td>
<td><p>[required] The name of an endpoint configuration. For more
information, see <code>create_endpoint_config</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_endpoint_:_DeploymentConfig">DeploymentConfig</code></td>
<td></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_endpoint_:_Tags">Tags</code></td>
<td><p>An array of key-value pairs. You can use tags to categorize your
Amazon Web Services resources in different ways, for example, by
purpose, owner, or environment. For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services Resources</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EndpointArn = "string"
    )

### Request syntax

    svc$create_endpoint(
      EndpointName = "string",
      EndpointConfigName = "string",
      DeploymentConfig = list(
        BlueGreenUpdatePolicy = list(
          TrafficRoutingConfiguration = list(
            Type = "ALL_AT_ONCE"|"CANARY"|"LINEAR",
            WaitIntervalInSeconds = 123,
            CanarySize = list(
              Type = "INSTANCE_COUNT"|"CAPACITY_PERCENT",
              Value = 123
            ),
            LinearStepSize = list(
              Type = "INSTANCE_COUNT"|"CAPACITY_PERCENT",
              Value = 123
            )
          ),
          TerminationWaitInSeconds = 123,
          MaximumExecutionTimeoutInSeconds = 123
        ),
        AutoRollbackConfiguration = list(
          Alarms = list(
            list(
              AlarmName = "string"
            )
          )
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
