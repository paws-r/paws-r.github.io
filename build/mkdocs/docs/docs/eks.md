<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Elastic Kubernetes Service

### Description

Amazon Elastic Kubernetes Service (Amazon EKS) is a managed service that
makes it easy for you to run Kubernetes on Amazon Web Services without
needing to stand up or maintain your own Kubernetes control plane.
Kubernetes is an open-source system for automating the deployment,
scaling, and management of containerized applications.

Amazon EKS runs up-to-date versions of the open-source Kubernetes
software, so you can use all the existing plugins and tooling from the
Kubernetes community. Applications running on Amazon EKS are fully
compatible with applications running on any standard Kubernetes
environment, whether running in on-premises data centers or public
clouds. This means that you can easily migrate any standard Kubernetes
application to Amazon EKS without any code modification required.

### Usage

    eks(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eks_:_config">config</code></td>
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

    svc <- eks(
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
<td style="text-align: left;"><a href="../eks_associate_encryption_config/"> associate_encryption_config </a></td>
<td style="text-align: left;">Associate encryption configuration to an
existing cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eks_associate_identity_provider_config/"> associate_identity_provider_config </a></td>
<td style="text-align: left;">Associate an identity provider
configuration to a cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eks_create_addon/"> create_addon </a></td>
<td style="text-align: left;">Creates an Amazon EKS add-on</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eks_create_cluster/"> create_cluster </a></td>
<td style="text-align: left;">Creates an Amazon EKS control plane</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eks_create_fargate_profile/"> create_fargate_profile </a></td>
<td style="text-align: left;">Creates an Fargate profile for your Amazon
EKS cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eks_create_nodegroup/"> create_nodegroup </a></td>
<td style="text-align: left;">Creates a managed node group for an Amazon
EKS cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eks_delete_addon/"> delete_addon </a></td>
<td style="text-align: left;">Delete an Amazon EKS add-on</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eks_delete_cluster/"> delete_cluster </a></td>
<td style="text-align: left;">Deletes the Amazon EKS cluster control
plane</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eks_delete_fargate_profile/"> delete_fargate_profile </a></td>
<td style="text-align: left;">Deletes an Fargate profile</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eks_delete_nodegroup/"> delete_nodegroup </a></td>
<td style="text-align: left;">Deletes an Amazon EKS node group for a
cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eks_deregister_cluster/"> deregister_cluster </a></td>
<td style="text-align: left;">Deregisters a connected cluster to remove
it from the Amazon EKS control plane</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eks_describe_addon/"> describe_addon </a></td>
<td style="text-align: left;">Describes an Amazon EKS add-on</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eks_describe_addon_configuration/"> describe_addon_configuration </a></td>
<td style="text-align: left;">Returns configuration options</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eks_describe_addon_versions/"> describe_addon_versions </a></td>
<td style="text-align: left;">Describes the versions for an add-on</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eks_describe_cluster/"> describe_cluster </a></td>
<td style="text-align: left;">Returns descriptive information about an
Amazon EKS cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eks_describe_fargate_profile/"> describe_fargate_profile </a></td>
<td style="text-align: left;">Returns descriptive information about an
Fargate profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eks_describe_identity_provider_config/"> describe_identity_provider_config </a></td>
<td style="text-align: left;">Returns descriptive information about an
identity provider configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eks_describe_nodegroup/"> describe_nodegroup </a></td>
<td style="text-align: left;">Returns descriptive information about an
Amazon EKS node group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eks_describe_update/"> describe_update </a></td>
<td style="text-align: left;">Returns descriptive information about an
update against your Amazon EKS cluster or associated managed node group
or Amazon EKS add-on</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eks_disassociate_identity_provider_config/"> disassociate_identity_provider_config </a></td>
<td style="text-align: left;">Disassociates an identity provider
configuration from a cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eks_list_addons/"> list_addons </a></td>
<td style="text-align: left;">Lists the available add-ons</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eks_list_clusters/"> list_clusters </a></td>
<td style="text-align: left;">Lists the Amazon EKS clusters in your
Amazon Web Services account in the specified Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eks_list_fargate_profiles/"> list_fargate_profiles </a></td>
<td style="text-align: left;">Lists the Fargate profiles associated with
the specified cluster in your Amazon Web Services account in the
specified Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eks_list_identity_provider_configs/"> list_identity_provider_configs </a></td>
<td style="text-align: left;">A list of identity provider
configurations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eks_list_nodegroups/"> list_nodegroups </a></td>
<td style="text-align: left;">Lists the Amazon EKS managed node groups
associated with the specified cluster in your Amazon Web Services
account in the specified Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eks_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">List the tags for an Amazon EKS
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eks_list_updates/"> list_updates </a></td>
<td style="text-align: left;">Lists the updates associated with an
Amazon EKS cluster or managed node group in your Amazon Web Services
account, in the specified Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eks_register_cluster/"> register_cluster </a></td>
<td style="text-align: left;">Connects a Kubernetes cluster to the
Amazon EKS control plane</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eks_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Associates the specified tags to a
resource with the specified resourceArn</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eks_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Deletes specified tags from a
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eks_update_addon/"> update_addon </a></td>
<td style="text-align: left;">Updates an Amazon EKS add-on</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eks_update_cluster_config/"> update_cluster_config </a></td>
<td style="text-align: left;">Updates an Amazon EKS cluster
configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eks_update_cluster_version/"> update_cluster_version </a></td>
<td style="text-align: left;">Updates an Amazon EKS cluster to the
specified Kubernetes version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eks_update_nodegroup_config/"> update_nodegroup_config </a></td>
<td style="text-align: left;">Updates an Amazon EKS managed node group
configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eks_update_nodegroup_version/"> update_nodegroup_version </a></td>
<td style="text-align: left;">Updates the Kubernetes version or AMI
version of an Amazon EKS managed node group</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- eks()
    # The following example creates an Amazon EKS cluster called prod.
    svc$create_cluster(
      version = "1.10",
      name = "prod",
      clientRequestToken = "1d2129a1-3d38-460a-9756-e5b91fddb951",
      resourcesVpcConfig = list(
        securityGroupIds = list(
          "sg-6979fe18"
        ),
        subnetIds = list(
          "subnet-6782e71e",
          "subnet-e7e761ac"
        )
      ),
      roleArn = "arn:aws:iam::012345678910:role/eks-service-role-AWSServiceRole..."
    )

    ## End(Not run)
