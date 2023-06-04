<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_presigned_notebook_instance_url</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a URL that you can use to connect to the Jupyter server from a notebook instance

### Description

Returns a URL that you can use to connect to the Jupyter server from a
notebook instance. In the SageMaker console, when you choose `Open` next
to a notebook instance, SageMaker opens a new tab showing the Jupyter
server home page from the notebook instance. The console uses this API
to get the URL and show the page.

The IAM role or user used to call this API defines the permissions to
access the notebook instance. Once the presigned URL is created, no
additional permission is required to access this URL. IAM authorization
policies for this API are also enforced for every HTTP request and
WebSocket frame that attempts to connect to the notebook instance.

You can restrict access to this API and to the URL that it returns to a
list of IP addresses that you specify. Use the `NotIpAddress` condition
operator and the `aws:SourceIP` condition context key to specify the
list of IP addresses that you want to have access to the notebook
instance. For more information, see [Limit Access to a Notebook Instance
by IP
Address](https://docs.aws.amazon.com/sagemaker/latest/dg/security_iam_id-based-policy-examples.html#nbi-ip-filter).

The URL that you get from a call to
`create_presigned_notebook_instance_url` is valid only for 5 minutes. If
you try to use the URL after the 5-minute limit expires, you are
directed to the Amazon Web Services console sign-in page.

### Usage

    sagemaker_create_presigned_notebook_instance_url(NotebookInstanceName,
      SessionExpirationDurationInSeconds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_presigned_notebook_instance_url_:_NotebookInstanceName">NotebookInstanceName</code></td>
<td><p>[required] The name of the notebook instance.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_presigned_notebook_instance_url_:_SessionExpirationDurationInSeconds">SessionExpirationDurationInSeconds</code></td>
<td><p>The duration of the session, in seconds. The default is 12
hours.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AuthorizedUrl = "string"
    )

### Request syntax

    svc$create_presigned_notebook_instance_url(
      NotebookInstanceName = "string",
      SessionExpirationDurationInSeconds = 123
    )
