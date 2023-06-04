<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_notebook_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an SageMaker notebook instance

### Description

Creates an SageMaker notebook instance. A notebook instance is a machine
learning (ML) compute instance running on a Jupyter notebook.

In a `create_notebook_instance` request, specify the type of ML compute
instance that you want to run. SageMaker launches the instance, installs
common libraries that you can use to explore datasets for model
training, and attaches an ML storage volume to the notebook instance.

SageMaker also provides a set of example notebooks. Each notebook
demonstrates how to use SageMaker with a specific algorithm or with a
machine learning framework.

After receiving the request, SageMaker does the following:

1.  Creates a network interface in the SageMaker VPC.

2.  (Option) If you specified `SubnetId`, SageMaker creates a network
    interface in your own VPC, which is inferred from the subnet ID that
    you provide in the input. When creating this network interface,
    SageMaker attaches the security group that you specified in the
    request to the network interface that it creates in your VPC.

3.  Launches an EC2 instance of the type specified in the request in the
    SageMaker VPC. If you specified `SubnetId` of your VPC, SageMaker
    specifies both network interfaces when launching this instance. This
    enables inbound traffic from your own VPC to the notebook instance,
    assuming that the security groups allow it.

After creating the notebook instance, SageMaker returns its Amazon
Resource Name (ARN). You can't change the name of a notebook instance
after you create it.

After SageMaker creates the notebook instance, you can connect to the
Jupyter server and work in Jupyter notebooks. For example, you can write
code to explore a dataset that you can use for model training, train a
model, host models by creating SageMaker endpoints, and validate hosted
models.

For more information, see [How It
Works](https://docs.aws.amazon.com/sagemaker/latest/dg/).

### Usage

    sagemaker_create_notebook_instance(NotebookInstanceName, InstanceType,
      SubnetId, SecurityGroupIds, RoleArn, KmsKeyId, Tags,
      LifecycleConfigName, DirectInternetAccess, VolumeSizeInGB,
      AcceleratorTypes, DefaultCodeRepository, AdditionalCodeRepositories,
      RootAccess, PlatformIdentifier, InstanceMetadataServiceConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_notebook_instance_:_NotebookInstanceName">NotebookInstanceName</code></td>
<td><p>[required] The name of the new notebook instance.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_notebook_instance_:_InstanceType">InstanceType</code></td>
<td><p>[required] The type of ML compute instance to launch for the
notebook instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_notebook_instance_:_SubnetId">SubnetId</code></td>
<td><p>The ID of the subnet in a VPC to which you would like to have a
connectivity from your ML compute instance.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_notebook_instance_:_SecurityGroupIds">SecurityGroupIds</code></td>
<td><p>The VPC security group IDs, in the form sg-xxxxxxxx. The security
groups must be for the same VPC as specified in the subnet.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_notebook_instance_:_RoleArn">RoleArn</code></td>
<td><p>[required] When you send any requests to Amazon Web Services
resources from the notebook instance, SageMaker assumes this role to
perform tasks on your behalf. You must grant this role necessary
permissions so SageMaker can perform these tasks. The policy must allow
the SageMaker service principal (sagemaker.amazonaws.com) permissions to
assume this role. For more information, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html">SageMaker
Roles</a>.</p>
<p>To be able to pass this role to SageMaker, the caller of this API
must have the <code>iam:PassRole</code> permission.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_notebook_instance_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The Amazon Resource Name (ARN) of a Amazon Web Services Key
Management Service key that SageMaker uses to encrypt data on the
storage volume attached to your notebook instance. The KMS key you
provide must be enabled. For information, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/enabling-keys.html">Enabling
and Disabling Keys</a> in the <em>Amazon Web Services Key Management
Service Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_notebook_instance_:_Tags">Tags</code></td>
<td><p>An array of key-value pairs. You can use tags to categorize your
Amazon Web Services resources in different ways, for example, by
purpose, owner, or environment. For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services Resources</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_notebook_instance_:_LifecycleConfigName">LifecycleConfigName</code></td>
<td><p>The name of a lifecycle configuration to associate with the
notebook instance. For information about lifestyle configurations, see
<a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html">Step
2.1: (Optional) Customize a Notebook Instance</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_notebook_instance_:_DirectInternetAccess">DirectInternetAccess</code></td>
<td><p>Sets whether SageMaker provides internet access to the notebook
instance. If you set this to <code>Disabled</code> this notebook
instance is able to access resources only in your VPC, and is not be
able to connect to SageMaker training and endpoint services unless you
configure a NAT Gateway in your VPC.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-interface-endpoint.html#appendix-notebook-and-internet-access">Notebook
Instances Are Internet-Enabled by Default</a>. You can set the value of
this parameter to <code>Disabled</code> only if you set a value for the
<code>SubnetId</code> parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_notebook_instance_:_VolumeSizeInGB">VolumeSizeInGB</code></td>
<td><p>The size, in GB, of the ML storage volume to attach to the
notebook instance. The default value is 5 GB.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_notebook_instance_:_AcceleratorTypes">AcceleratorTypes</code></td>
<td><p>A list of Elastic Inference (EI) instance types to associate with
this notebook instance. Currently, only one instance type can be
associated with a notebook instance. For more information, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/ei.html">Using
Elastic Inference in Amazon SageMaker</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_notebook_instance_:_DefaultCodeRepository">DefaultCodeRepository</code></td>
<td><p>A Git repository to associate with the notebook instance as its
default code repository. This can be either the name of a Git repository
stored as a resource in your account, or the URL of a Git repository in
<a
href="https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html">Amazon
Web Services CodeCommit</a> or in any other Git repository. When you
open a notebook instance, it opens in the directory that contains this
repository. For more information, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html">Associating
Git Repositories with SageMaker Notebook Instances</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_notebook_instance_:_AdditionalCodeRepositories">AdditionalCodeRepositories</code></td>
<td><p>An array of up to three Git repositories to associate with the
notebook instance. These can be either the names of Git repositories
stored as resources in your account, or the URL of Git repositories in
<a
href="https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html">Amazon
Web Services CodeCommit</a> or in any other Git repository. These
repositories are cloned at the same level as the default repository of
your notebook instance. For more information, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html">Associating
Git Repositories with SageMaker Notebook Instances</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_notebook_instance_:_RootAccess">RootAccess</code></td>
<td><p>Whether root access is enabled or disabled for users of the
notebook instance. The default value is <code>Enabled</code>.</p>
<p>Lifecycle configurations need root access to be able to set up a
notebook instance. Because of this, lifecycle configurations associated
with a notebook instance always run with root access even if you disable
root access for users.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_notebook_instance_:_PlatformIdentifier">PlatformIdentifier</code></td>
<td><p>The platform identifier of the notebook instance runtime
environment.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_notebook_instance_:_InstanceMetadataServiceConfiguration">InstanceMetadataServiceConfiguration</code></td>
<td><p>Information on the IMDS configuration of the notebook
instance</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NotebookInstanceArn = "string"
    )

### Request syntax

    svc$create_notebook_instance(
      NotebookInstanceName = "string",
      InstanceType = "ml.t2.medium"|"ml.t2.large"|"ml.t2.xlarge"|"ml.t2.2xlarge"|"ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.8xlarge"|"ml.m5d.12xlarge"|"ml.m5d.16xlarge"|"ml.m5d.24xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5d.xlarge"|"ml.c5d.2xlarge"|"ml.c5d.4xlarge"|"ml.c5d.9xlarge"|"ml.c5d.18xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.8xlarge"|"ml.r5.12xlarge"|"ml.r5.16xlarge"|"ml.r5.24xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.16xlarge"|"ml.g5.12xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.inf1.xlarge"|"ml.inf1.2xlarge"|"ml.inf1.6xlarge"|"ml.inf1.24xlarge"|"ml.p4d.24xlarge"|"ml.p4de.24xlarge",
      SubnetId = "string",
      SecurityGroupIds = list(
        "string"
      ),
      RoleArn = "string",
      KmsKeyId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      LifecycleConfigName = "string",
      DirectInternetAccess = "Enabled"|"Disabled",
      VolumeSizeInGB = 123,
      AcceleratorTypes = list(
        "ml.eia1.medium"|"ml.eia1.large"|"ml.eia1.xlarge"|"ml.eia2.medium"|"ml.eia2.large"|"ml.eia2.xlarge"
      ),
      DefaultCodeRepository = "string",
      AdditionalCodeRepositories = list(
        "string"
      ),
      RootAccess = "Enabled"|"Disabled",
      PlatformIdentifier = "string",
      InstanceMetadataServiceConfiguration = list(
        MinimumInstanceMetadataServiceVersion = "string"
      )
    )
