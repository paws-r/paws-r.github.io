<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemakerfeaturestoreruntime</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon SageMaker Feature Store Runtime

### Description

Contains all data plane API operations and data types for the Amazon
SageMaker Feature Store. Use this API to put, delete, and retrieve (get)
features from a feature store.

Use the following operations to configure your `OnlineStore` and
`OfflineStore` features, and to create and manage feature groups:

-   [CreateFeatureGroup](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateFeatureGroup.html)

-   [DeleteFeatureGroup](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteFeatureGroup.html)

-   [DescribeFeatureGroup](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeFeatureGroup.html)

-   [ListFeatureGroups](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListFeatureGroups.html)

### Usage

    sagemakerfeaturestoreruntime(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemakerfeaturestoreruntime_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- sagemakerfeaturestoreruntime(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemakerfeaturestoreruntime_batch_get_record/"> batch_get_record </a></td>
<td style="text-align: left;">Retrieves a batch of Records from a
FeatureGroup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemakerfeaturestoreruntime_delete_record/"> delete_record </a></td>
<td style="text-align: left;">Deletes a Record from a FeatureGroup in
the OnlineStore</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sagemakerfeaturestoreruntime_get_record/"> get_record </a></td>
<td style="text-align: left;">Use for OnlineStore serving from a
FeatureStore</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sagemakerfeaturestoreruntime_put_record/"> put_record </a></td>
<td style="text-align: left;">Used for data ingestion into the
FeatureStore</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- sagemakerfeaturestoreruntime()
    svc$batch_get_record(
      Foo = 123
    )

    ## End(Not run)
