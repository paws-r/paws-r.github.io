<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloud9_create_environment_ec2</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Cloud9 development environment, launches an Amazon Elastic Compute Cloud (Amazon EC2) instance, and then connects from the instance to the environment

### Description

Creates an Cloud9 development environment, launches an Amazon Elastic
Compute Cloud (Amazon EC2) instance, and then connects from the instance
to the environment.

### Usage

    cloud9_create_environment_ec2(name, description, clientRequestToken,
      instanceType, subnetId, imageId, automaticStopTimeMinutes, ownerArn,
      tags, connectionType, dryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloud9_create_environment_ec2_:_name">name</code></td>
<td><p>[required] The name of the environment to create.</p>
<p>This name is visible to other IAM users in the same Amazon Web
Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="cloud9_create_environment_ec2_:_description">description</code></td>
<td><p>The description of the environment to create.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloud9_create_environment_ec2_:_clientRequestToken">clientRequestToken</code></td>
<td><p>A unique, case-sensitive string that helps Cloud9 to ensure this
operation completes no more than one time.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Client
Tokens</a> in the <em>Amazon EC2 API Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloud9_create_environment_ec2_:_instanceType">instanceType</code></td>
<td><p>[required] The type of instance to connect to the environment
(for example, <code>t2.micro</code>).</p></td>
</tr>
<tr class="odd">
<td><code
id="cloud9_create_environment_ec2_:_subnetId">subnetId</code></td>
<td><p>The ID of the subnet in Amazon VPC that Cloud9 will use to
communicate with the Amazon EC2 instance.</p></td>
</tr>
<tr class="even">
<td><code
id="cloud9_create_environment_ec2_:_imageId">imageId</code></td>
<td><p>The identifier for the Amazon Machine Image (AMI) that's used to
create the EC2 instance. To choose an AMI for the instance, you must
specify a valid AMI alias or a valid Amazon EC2 Systems Manager (SSM)
path.</p>
<p>The default Amazon Linux AMI is currently used if the parameter isn't
explicitly assigned a value in the request.</p>
<p>In the future the parameter for Amazon Linux will no longer be
available when you specify an AMI for your instance. Amazon Linux 2 will
then become the default AMI, which is used to launch your instance if no
parameter is explicitly defined.</p>
<p><strong>AMI aliases</strong></p>
<ul>
<li><p><strong>Amazon Linux (default):
<code>amazonlinux-1-x86_64</code></strong></p></li>
<li><p>Amazon Linux 2: <code>amazonlinux-2-x86_64</code></p></li>
<li><p>Ubuntu 18.04: <code>ubuntu-18.04-x86_64</code></p></li>
</ul>
<p><strong>SSM paths</strong></p>
<ul>
<li><p><strong>Amazon Linux (default): <code
style="white-space: pre;">⁠resolve:ssm:/aws/service/cloud9/amis/amazonlinux-1-x86_64⁠</code></strong></p></li>
<li><p>Amazon Linux 2: <code
style="white-space: pre;">⁠resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2-x86_64⁠</code></p></li>
<li><p>Ubuntu 18.04: <code
style="white-space: pre;">⁠resolve:ssm:/aws/service/cloud9/amis/ubuntu-18.04-x86_64⁠</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="cloud9_create_environment_ec2_:_automaticStopTimeMinutes">automaticStopTimeMinutes</code></td>
<td><p>The number of minutes until the running instance is shut down
after the environment has last been used.</p></td>
</tr>
<tr class="even">
<td><code
id="cloud9_create_environment_ec2_:_ownerArn">ownerArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the environment owner. This ARN
can be the ARN of any IAM principal. If this value is not specified, the
ARN defaults to this environment's creator.</p></td>
</tr>
<tr class="odd">
<td><code id="cloud9_create_environment_ec2_:_tags">tags</code></td>
<td><p>An array of key-value pairs that will be associated with the new
Cloud9 development environment.</p></td>
</tr>
<tr class="even">
<td><code
id="cloud9_create_environment_ec2_:_connectionType">connectionType</code></td>
<td><p>The connection type used for connecting to an Amazon EC2
environment. Valid values are <code>CONNECT_SSH</code> (default) and
<code>CONNECT_SSM</code> (connected through Amazon EC2 Systems
Manager).</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/cloud9/latest/user-guide/ec2-ssm.html">Accessing
no-ingress EC2 instances with Amazon EC2 Systems Manager</a> in the
<em>Cloud9 User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="cloud9_create_environment_ec2_:_dryRun">dryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      environmentId = "string"
    )

### Request syntax

    svc$create_environment_ec2(
      name = "string",
      description = "string",
      clientRequestToken = "string",
      instanceType = "string",
      subnetId = "string",
      imageId = "string",
      automaticStopTimeMinutes = 123,
      ownerArn = "string",
      tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      connectionType = "CONNECT_SSH"|"CONNECT_SSM",
      dryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # 
    svc$create_environment_ec2(
      name = "my-demo-environment",
      automaticStopTimeMinutes = 60L,
      description = "This is my demonstration environment.",
      instanceType = "t2.micro",
      ownerArn = "arn:aws:iam::123456789012:user/MyDemoUser",
      subnetId = "subnet-6300cd1b"
    )

    ## End(Not run)
