<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_notebook_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a notebook instance

### Description

Updates a notebook instance. NotebookInstance updates include upgrading
or downgrading the ML compute instance used for your notebook instance
to accommodate changes in your workload requirements.

### Usage

    sagemaker_update_notebook_instance(NotebookInstanceName, InstanceType,
      RoleArn, LifecycleConfigName, DisassociateLifecycleConfig,
      VolumeSizeInGB, DefaultCodeRepository, AdditionalCodeRepositories,
      AcceleratorTypes, DisassociateAcceleratorTypes,
      DisassociateDefaultCodeRepository,
      DisassociateAdditionalCodeRepositories, RootAccess,
      InstanceMetadataServiceConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_notebook_instance_:_NotebookInstanceName">NotebookInstanceName</code></td>
<td><p>[required] The name of the notebook instance to update.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_notebook_instance_:_InstanceType">InstanceType</code></td>
<td><p>The Amazon ML compute instance type.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_notebook_instance_:_RoleArn">RoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM role that SageMaker can
assume to access the notebook instance. For more information, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html">SageMaker
Roles</a>.</p>
<p>To be able to pass this role to SageMaker, the caller of this API
must have the <code>iam:PassRole</code> permission.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_notebook_instance_:_LifecycleConfigName">LifecycleConfigName</code></td>
<td><p>The name of a lifecycle configuration to associate with the
notebook instance. For information about lifestyle configurations, see
<a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html">Step
2.1: (Optional) Customize a Notebook Instance</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_notebook_instance_:_DisassociateLifecycleConfig">DisassociateLifecycleConfig</code></td>
<td><p>Set to <code>true</code> to remove the notebook instance
lifecycle configuration currently associated with the notebook instance.
This operation is idempotent. If you specify a lifecycle configuration
that is not associated with the notebook instance when you call this
method, it does not throw an error.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_notebook_instance_:_VolumeSizeInGB">VolumeSizeInGB</code></td>
<td><p>The size, in GB, of the ML storage volume to attach to the
notebook instance. The default value is 5 GB. ML storage volumes are
encrypted, so SageMaker can't determine the amount of available free
space on the volume. Because of this, you can increase the volume size
when you update a notebook instance, but you can't decrease the volume
size. If you want to decrease the size of the ML storage volume in use,
create a new notebook instance with the desired size.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_notebook_instance_:_DefaultCodeRepository">DefaultCodeRepository</code></td>
<td><p>The Git repository to associate with the notebook instance as its
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
<tr class="even">
<td><code
id="sagemaker_update_notebook_instance_:_AdditionalCodeRepositories">AdditionalCodeRepositories</code></td>
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
<tr class="odd">
<td><code
id="sagemaker_update_notebook_instance_:_AcceleratorTypes">AcceleratorTypes</code></td>
<td><p>A list of the Elastic Inference (EI) instance types to associate
with this notebook instance. Currently only one EI instance type can be
associated with a notebook instance. For more information, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/ei.html">Using
Elastic Inference in Amazon SageMaker</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_notebook_instance_:_DisassociateAcceleratorTypes">DisassociateAcceleratorTypes</code></td>
<td><p>A list of the Elastic Inference (EI) instance types to remove
from this notebook instance. This operation is idempotent. If you
specify an accelerator type that is not associated with the notebook
instance when you call this method, it does not throw an error.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_notebook_instance_:_DisassociateDefaultCodeRepository">DisassociateDefaultCodeRepository</code></td>
<td><p>The name or URL of the default Git repository to remove from this
notebook instance. This operation is idempotent. If you specify a Git
repository that is not associated with the notebook instance when you
call this method, it does not throw an error.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_notebook_instance_:_DisassociateAdditionalCodeRepositories">DisassociateAdditionalCodeRepositories</code></td>
<td><p>A list of names or URLs of the default Git repositories to remove
from this notebook instance. This operation is idempotent. If you
specify a Git repository that is not associated with the notebook
instance when you call this method, it does not throw an error.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_notebook_instance_:_RootAccess">RootAccess</code></td>
<td><p>Whether root access is enabled or disabled for users of the
notebook instance. The default value is <code>Enabled</code>.</p>
<p>If you set this to <code>Disabled</code>, users don't have root
access on the notebook instance, but lifecycle configuration scripts
still run with root permissions.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_notebook_instance_:_InstanceMetadataServiceConfiguration">InstanceMetadataServiceConfiguration</code></td>
<td><p>Information on the IMDS configuration of the notebook
instance</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_notebook_instance(
      NotebookInstanceName = "string",
      InstanceType = "ml.t2.medium"|"ml.t2.large"|"ml.t2.xlarge"|"ml.t2.2xlarge"|"ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.8xlarge"|"ml.m5d.12xlarge"|"ml.m5d.16xlarge"|"ml.m5d.24xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5d.xlarge"|"ml.c5d.2xlarge"|"ml.c5d.4xlarge"|"ml.c5d.9xlarge"|"ml.c5d.18xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.8xlarge"|"ml.r5.12xlarge"|"ml.r5.16xlarge"|"ml.r5.24xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.16xlarge"|"ml.g5.12xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.inf1.xlarge"|"ml.inf1.2xlarge"|"ml.inf1.6xlarge"|"ml.inf1.24xlarge"|"ml.p4d.24xlarge"|"ml.p4de.24xlarge",
      RoleArn = "string",
      LifecycleConfigName = "string",
      DisassociateLifecycleConfig = TRUE|FALSE,
      VolumeSizeInGB = 123,
      DefaultCodeRepository = "string",
      AdditionalCodeRepositories = list(
        "string"
      ),
      AcceleratorTypes = list(
        "ml.eia1.medium"|"ml.eia1.large"|"ml.eia1.xlarge"|"ml.eia2.medium"|"ml.eia2.large"|"ml.eia2.xlarge"
      ),
      DisassociateAcceleratorTypes = TRUE|FALSE,
      DisassociateDefaultCodeRepository = TRUE|FALSE,
      DisassociateAdditionalCodeRepositories = TRUE|FALSE,
      RootAccess = "Enabled"|"Disabled",
      InstanceMetadataServiceConfiguration = list(
        MinimumInstanceMetadataServiceVersion = "string"
      )
    )
