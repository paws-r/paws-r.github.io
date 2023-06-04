<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_create_dev_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new development endpoint

### Description

Creates a new development endpoint.

### Usage

    glue_create_dev_endpoint(EndpointName, RoleArn, SecurityGroupIds,
      SubnetId, PublicKey, PublicKeys, NumberOfNodes, WorkerType, GlueVersion,
      NumberOfWorkers, ExtraPythonLibsS3Path, ExtraJarsS3Path,
      SecurityConfiguration, Tags, Arguments)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_create_dev_endpoint_:_EndpointName">EndpointName</code></td>
<td><p>[required] The name to be assigned to the new
<code>DevEndpoint</code>.</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_dev_endpoint_:_RoleArn">RoleArn</code></td>
<td><p>[required] The IAM role for the
<code>DevEndpoint</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_dev_endpoint_:_SecurityGroupIds">SecurityGroupIds</code></td>
<td><p>Security group IDs for the security groups to be used by the new
<code>DevEndpoint</code>.</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_dev_endpoint_:_SubnetId">SubnetId</code></td>
<td><p>The subnet ID for the new <code>DevEndpoint</code> to
use.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_dev_endpoint_:_PublicKey">PublicKey</code></td>
<td><p>The public key to be used by this <code>DevEndpoint</code> for
authentication. This attribute is provided for backward compatibility
because the recommended attribute to use is public keys.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_dev_endpoint_:_PublicKeys">PublicKeys</code></td>
<td><p>A list of public keys to be used by the development endpoints for
authentication. The use of this attribute is preferred over a single
public key because the public keys allow you to have a different private
key per client.</p>
<p>If you previously created an endpoint with a public key, you must
remove that key to be able to set a list of public keys. Call the
<code>update_dev_endpoint</code> API with the public key content in the
<code>deletePublicKeys</code> attribute, and the list of new keys in the
<code>addPublicKeys</code> attribute.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_dev_endpoint_:_NumberOfNodes">NumberOfNodes</code></td>
<td><p>The number of Glue Data Processing Units (DPUs) to allocate to
this <code>DevEndpoint</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_dev_endpoint_:_WorkerType">WorkerType</code></td>
<td><p>The type of predefined worker that is allocated to the
development endpoint. Accepts a value of Standard, G.1X, or G.2X.</p>
<ul>
<li><p>For the <code>Standard</code> worker type, each worker provides 4
vCPU, 16 GB of memory and a 50GB disk, and 2 executors per
worker.</p></li>
<li><p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU
(4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per
worker. We recommend this worker type for memory-intensive
jobs.</p></li>
<li><p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU
(8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per
worker. We recommend this worker type for memory-intensive
jobs.</p></li>
</ul>
<p>Known issue: when a development endpoint is created with the
<code>G.2X</code> <code>WorkerType</code> configuration, the Spark
drivers for the development endpoint will run on 4 vCPU, 16 GB of
memory, and a 64 GB disk.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_dev_endpoint_:_GlueVersion">GlueVersion</code></td>
<td><p>Glue version determines the versions of Apache Spark and Python
that Glue supports. The Python version indicates the version supported
for running your ETL scripts on development endpoints.</p>
<p>For more information about the available Glue versions and
corresponding Spark and Python versions, see <a
href="https://docs.aws.amazon.com/glue/latest/dg/add-job.html">Glue
version</a> in the developer guide.</p>
<p>Development endpoints that are created without specifying a Glue
version default to Glue 0.9.</p>
<p>You can specify a version of Python support for development endpoints
by using the <code>Arguments</code> parameter in the
<code>create_dev_endpoint</code> or <code>update_dev_endpoint</code>
APIs. If no arguments are provided, the version defaults to Python
2.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_dev_endpoint_:_NumberOfWorkers">NumberOfWorkers</code></td>
<td><p>The number of workers of a defined <code>workerType</code> that
are allocated to the development endpoint.</p>
<p>The maximum number of workers you can define are 299 for
<code>G.1X</code>, and 149 for <code>G.2X</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_dev_endpoint_:_ExtraPythonLibsS3Path">ExtraPythonLibsS3Path</code></td>
<td><p>The paths to one or more Python libraries in an Amazon S3 bucket
that should be loaded in your <code>DevEndpoint</code>. Multiple values
must be complete paths separated by a comma.</p>
<p>You can only use pure Python libraries with a
<code>DevEndpoint</code>. Libraries that rely on C extensions, such as
the <a href="http://pandas.pydata.org/">pandas</a> Python data analysis
library, are not yet supported.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_dev_endpoint_:_ExtraJarsS3Path">ExtraJarsS3Path</code></td>
<td><p>The path to one or more Java <code>.jar</code> files in an S3
bucket that should be loaded in your <code>DevEndpoint</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_dev_endpoint_:_SecurityConfiguration">SecurityConfiguration</code></td>
<td><p>The name of the <code>SecurityConfiguration</code> structure to
be used with this <code>DevEndpoint</code>.</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_dev_endpoint_:_Tags">Tags</code></td>
<td><p>The tags to use with this DevEndpoint. You may use tags to limit
access to the DevEndpoint. For more information about tags in Glue, see
<a
href="https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html">Amazon
Web Services Tags in Glue</a> in the developer guide.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_dev_endpoint_:_Arguments">Arguments</code></td>
<td><p>A map of arguments used to configure the
<code>DevEndpoint</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EndpointName = "string",
      Status = "string",
      SecurityGroupIds = list(
        "string"
      ),
      SubnetId = "string",
      RoleArn = "string",
      YarnEndpointAddress = "string",
      ZeppelinRemoteSparkInterpreterPort = 123,
      NumberOfNodes = 123,
      WorkerType = "Standard"|"G.1X"|"G.2X"|"G.025X"|"G.4X"|"G.8X",
      GlueVersion = "string",
      NumberOfWorkers = 123,
      AvailabilityZone = "string",
      VpcId = "string",
      ExtraPythonLibsS3Path = "string",
      ExtraJarsS3Path = "string",
      FailureReason = "string",
      SecurityConfiguration = "string",
      CreatedTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      Arguments = list(
        "string"
      )
    )

### Request syntax

    svc$create_dev_endpoint(
      EndpointName = "string",
      RoleArn = "string",
      SecurityGroupIds = list(
        "string"
      ),
      SubnetId = "string",
      PublicKey = "string",
      PublicKeys = list(
        "string"
      ),
      NumberOfNodes = 123,
      WorkerType = "Standard"|"G.1X"|"G.2X"|"G.025X"|"G.4X"|"G.8X",
      GlueVersion = "string",
      NumberOfWorkers = 123,
      ExtraPythonLibsS3Path = "string",
      ExtraJarsS3Path = "string",
      SecurityConfiguration = "string",
      Tags = list(
        "string"
      ),
      Arguments = list(
        "string"
      )
    )
