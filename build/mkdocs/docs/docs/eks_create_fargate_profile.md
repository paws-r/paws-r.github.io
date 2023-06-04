<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_create_fargate_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Fargate profile for your Amazon EKS cluster

### Description

Creates an Fargate profile for your Amazon EKS cluster. You must have at
least one Fargate profile in a cluster to be able to run pods on
Fargate.

The Fargate profile allows an administrator to declare which pods run on
Fargate and specify which pods run on which Fargate profile. This
declaration is done through the profile’s selectors. Each profile can
have up to five selectors that contain a namespace and labels. A
namespace is required for every selector. The label field consists of
multiple optional key-value pairs. Pods that match the selectors are
scheduled on Fargate. If a to-be-scheduled pod matches any of the
selectors in the Fargate profile, then that pod is run on Fargate.

When you create a Fargate profile, you must specify a pod execution role
to use with the pods that are scheduled with the profile. This role is
added to the cluster's Kubernetes Role Based Access Control (RBAC) for
authorization so that the `kubelet` that is running on the Fargate
infrastructure can register with your Amazon EKS cluster so that it can
appear in your cluster as a node. The pod execution role also provides
IAM permissions to the Fargate infrastructure to allow read access to
Amazon ECR image repositories. For more information, see [Pod Execution
Role](https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html)
in the *Amazon EKS User Guide*.

Fargate profiles are immutable. However, you can create a new updated
profile to replace an existing profile and then delete the original
after the updated profile has finished creating.

If any Fargate profiles in a cluster are in the `DELETING` status, you
must wait for that Fargate profile to finish deleting before you can
create any other profiles in that cluster.

For more information, see [Fargate
Profile](https://docs.aws.amazon.com/eks/latest/userguide/fargate-profile.html)
in the *Amazon EKS User Guide*.

### Usage

    eks_create_fargate_profile(fargateProfileName, clusterName,
      podExecutionRoleArn, subnets, selectors, clientRequestToken, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eks_create_fargate_profile_:_fargateProfileName">fargateProfileName</code></td>
<td><p>[required] The name of the Fargate profile.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_create_fargate_profile_:_clusterName">clusterName</code></td>
<td><p>[required] The name of the Amazon EKS cluster to apply the
Fargate profile to.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_create_fargate_profile_:_podExecutionRoleArn">podExecutionRoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the pod execution
role to use for pods that match the selectors in the Fargate profile.
The pod execution role allows Fargate infrastructure to register with
your cluster as a node, and it provides read access to Amazon ECR image
repositories. For more information, see <a
href="https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html">Pod
Execution Role</a> in the <em>Amazon EKS User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="eks_create_fargate_profile_:_subnets">subnets</code></td>
<td><p>The IDs of subnets to launch your pods into. At this time, pods
running on Fargate are not assigned public IP addresses, so only private
subnets (with no direct route to an Internet Gateway) are accepted for
this parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_create_fargate_profile_:_selectors">selectors</code></td>
<td><p>The selectors to match for pods to use this Fargate profile. Each
selector must have an associated namespace. Optionally, you can also
specify labels for a namespace. You may specify up to five selectors in
a Fargate profile.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_create_fargate_profile_:_clientRequestToken">clientRequestToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.</p></td>
</tr>
<tr class="odd">
<td><code id="eks_create_fargate_profile_:_tags">tags</code></td>
<td><p>The metadata to apply to the Fargate profile to assist with
categorization and organization. Each tag consists of a key and an
optional value. You define both. Fargate profile tags do not propagate
to any other resources associated with the Fargate profile, such as the
pods that are scheduled with it.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      fargateProfile = list(
        fargateProfileName = "string",
        fargateProfileArn = "string",
        clusterName = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        podExecutionRoleArn = "string",
        subnets = list(
          "string"
        ),
        selectors = list(
          list(
            namespace = "string",
            labels = list(
              "string"
            )
          )
        ),
        status = "CREATING"|"ACTIVE"|"DELETING"|"CREATE_FAILED"|"DELETE_FAILED",
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$create_fargate_profile(
      fargateProfileName = "string",
      clusterName = "string",
      podExecutionRoleArn = "string",
      subnets = list(
        "string"
      ),
      selectors = list(
        list(
          namespace = "string",
          labels = list(
            "string"
          )
        )
      ),
      clientRequestToken = "string",
      tags = list(
        "string"
      )
    )
