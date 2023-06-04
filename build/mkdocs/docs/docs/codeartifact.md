<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## CodeArtifact

### Description

CodeArtifact is a fully managed artifact repository compatible with
language-native package managers and build tools such as npm, Apache
Maven, pip, and dotnet. You can use CodeArtifact to share packages with
development teams and pull packages. Packages can be pulled from both
public and CodeArtifact repositories. You can also create an upstream
relationship between a CodeArtifact repository and another repository,
which effectively merges their contents from the point of view of a
package manager client.

**CodeArtifact Components**

Use the information in this guide to help you work with the following
CodeArtifact components:

-   **Repository**: A CodeArtifact repository contains a set of [package
    versions](https://docs.aws.amazon.com/codeartifact/latest/ug/welcome.html#welcome-concepts-package-version),
    each of which maps to a set of assets, or files. Repositories are
    polyglot, so a single repository can contain packages of any
    supported type. Each repository exposes endpoints for fetching and
    publishing packages using tools like the **`npm`** CLI, the Maven
    CLI ( **`mvn`** ), Python CLIs ( **`pip`** and `twine`), and NuGet
    CLIs (`nuget` and `dotnet`).

-   **Domain**: Repositories are aggregated into a higher-level entity
    known as a *domain*. All package assets and metadata are stored in
    the domain, but are consumed through repositories. A given package
    asset, such as a Maven JAR file, is stored once per domain, no
    matter how many repositories it's present in. All of the assets and
    metadata in a domain are encrypted with the same customer master key
    (CMK) stored in Key Management Service (KMS).

    Each repository is a member of a single domain and can't be moved to
    a different domain.

    The domain allows organizational policy to be applied across
    multiple repositories, such as which accounts can access
    repositories in the domain, and which public repositories can be
    used as sources of packages.

    Although an organization can have multiple domains, we recommend a
    single production domain that contains all published artifacts so
    that teams can find and share packages across their organization.

-   **Package**: A *package* is a bundle of software and the metadata
    required to resolve dependencies and install the software.
    CodeArtifact supports
    [npm](https://docs.aws.amazon.com/codeartifact/latest/ug/using-npm.html),
    [PyPI](https://docs.aws.amazon.com/codeartifact/latest/ug/using-python.html),
    [Maven](https://docs.aws.amazon.com/codeartifact/latest/ug/using-maven.html),
    and
    [NuGet](https://docs.aws.amazon.com/codeartifact/latest/ug/using-nuget.html)
    package formats.

    In CodeArtifact, a package consists of:

    -   A *name* (for example, `webpack` is the name of a popular npm
        package)

    -   An optional namespace (for example, `⁠@types⁠` in `⁠@types/node⁠`)

    -   A set of versions (for example, `⁠1.0.0⁠`, `⁠1.0.1⁠`, `⁠1.0.2⁠`, etc.)

    -   Package-level metadata (for example, npm tags)

-   **Package version**: A version of a package, such as
    `⁠@types/node 12.6.9⁠`. The version number format and semantics vary
    for different package formats. For example, npm package versions
    must conform to the [Semantic Versioning
    specification](https://semver.org/). In CodeArtifact, a package
    version consists of the version identifier, metadata at the package
    version level, and a set of assets.

-   **Upstream repository**: One repository is *upstream* of another
    when the package versions in it can be accessed from the repository
    endpoint of the downstream repository, effectively merging the
    contents of the two repositories from the point of view of a client.
    CodeArtifact allows creating an upstream relationship between two
    repositories.

-   **Asset**: An individual file stored in CodeArtifact associated with
    a package version, such as an npm `.tgz` file or Maven POM and JAR
    files.

CodeArtifact supports these operations:

-   `associate_external_connection`: Adds an existing external
    connection to a repository.

-   `copy_package_versions`: Copies package versions from one repository
    to another repository in the same domain.

-   `create_domain`: Creates a domain

-   `create_repository`: Creates a CodeArtifact repository in a domain.

-   `delete_domain`: Deletes a domain. You cannot delete a domain that
    contains repositories.

-   `delete_domain_permissions_policy`: Deletes the resource policy that
    is set on a domain.

-   `delete_package`: Deletes a package and all associated package
    versions.

-   `delete_package_versions`: Deletes versions of a package. After a
    package has been deleted, it can be republished, but its assets and
    metadata cannot be restored because they have been permanently
    removed from storage.

-   `delete_repository`: Deletes a repository.

-   `delete_repository_permissions_policy`: Deletes the resource policy
    that is set on a repository.

-   `describe_domain`: Returns a `DomainDescription` object that
    contains information about the requested domain.

-   `describe_package`: Returns a
    [PackageDescription](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDescription.html)
    object that contains details about a package.

-   `describe_package_version`: Returns a
    [PackageVersionDescription](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html)
    object that contains details about a package version.

-   `describe_repository`: Returns a `RepositoryDescription` object that
    contains detailed information about the requested repository.

-   `dispose_package_versions`: Disposes versions of a package. A
    package version with the status `Disposed` cannot be restored
    because they have been permanently removed from storage.

-   `disassociate_external_connection`: Removes an existing external
    connection from a repository.

-   `get_authorization_token`: Generates a temporary authorization token
    for accessing repositories in the domain. The token expires the
    authorization period has passed. The default authorization period is
    12 hours and can be customized to any length with a maximum of 12
    hours.

-   `get_domain_permissions_policy`: Returns the policy of a resource
    that is attached to the specified domain.

-   `get_package_version_asset`: Returns the contents of an asset that
    is in a package version.

-   `get_package_version_readme`: Gets the readme file or descriptive
    text for a package version.

-   `get_repository_endpoint`: Returns the endpoint of a repository for
    a specific package format. A repository has one endpoint for each
    package format:

    -   `maven`

    -   `npm`

    -   `nuget`

    -   `pypi`

-   `get_repository_permissions_policy`: Returns the resource policy
    that is set on a repository.

-   `list_domains`: Returns a list of `DomainSummary` objects. Each
    returned `DomainSummary` object contains information about a domain.

-   `list_packages`: Lists the packages in a repository.

-   `list_package_version_assets`: Lists the assets for a given package
    version.

-   `list_package_version_dependencies`: Returns a list of the direct
    dependencies for a package version.

-   `list_package_versions`: Returns a list of package versions for a
    specified package in a repository.

-   `list_repositories`: Returns a list of repositories owned by the
    Amazon Web Services account that called this method.

-   `list_repositories_in_domain`: Returns a list of the repositories in
    a domain.

-   `publish_package_version`: Creates a new package version containing
    one or more assets.

-   `put_domain_permissions_policy`: Attaches a resource policy to a
    domain.

-   `put_package_origin_configuration`: Sets the package origin
    configuration for a package, which determine how new versions of the
    package can be added to a specific repository.

-   `put_repository_permissions_policy`: Sets the resource policy on a
    repository that specifies permissions to access it.

-   `update_package_versions_status`: Updates the status of one or more
    versions of a package.

-   `update_repository`: Updates the properties of a repository.

### Usage

    codeartifact(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codeartifact_:_config">config</code></td>
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

    svc <- codeartifact(
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
<td style="text-align: left;"><a href="../codeartifact_associate_external_connection/"> associate_external_connection </a></td>
<td style="text-align: left;">Adds an existing external connection to a
repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeartifact_copy_package_versions/"> copy_package_versions </a></td>
<td style="text-align: left;">Copies package versions from one
repository to another repository in the same domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeartifact_create_domain/"> create_domain </a></td>
<td style="text-align: left;">Creates a domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeartifact_create_repository/"> create_repository </a></td>
<td style="text-align: left;">Creates a repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeartifact_delete_domain/"> delete_domain </a></td>
<td style="text-align: left;">Deletes a domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeartifact_delete_domain_permissions_policy/"> delete_domain_permissions_policy </a></td>
<td style="text-align: left;">Deletes the resource policy set on a
domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeartifact_delete_package/"> delete_package </a></td>
<td style="text-align: left;">Deletes a package and all associated
package versions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeartifact_delete_package_versions/"> delete_package_versions </a></td>
<td style="text-align: left;">Deletes one or more versions of a
package</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeartifact_delete_repository/"> delete_repository </a></td>
<td style="text-align: left;">Deletes a repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeartifact_delete_repository_permissions_policy/"> delete_repository_permissions_policy </a></td>
<td style="text-align: left;">Deletes the resource policy that is set on
a repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeartifact_describe_domain/"> describe_domain </a></td>
<td style="text-align: left;">Returns a DomainDescription object that
contains information about the requested domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeartifact_describe_package/"> describe_package </a></td>
<td style="text-align: left;">Returns a PackageDescription object that
contains information about the requested package</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeartifact_describe_package_version/"> describe_package_version </a></td>
<td style="text-align: left;">Returns a PackageVersionDescription object
that contains information about the requested package version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeartifact_describe_repository/"> describe_repository </a></td>
<td style="text-align: left;">Returns a RepositoryDescription object
that contains detailed information about the requested repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeartifact_disassociate_external_connection/"> disassociate_external_connection </a></td>
<td style="text-align: left;">Removes an existing external connection
from a repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeartifact_dispose_package_versions/"> dispose_package_versions </a></td>
<td style="text-align: left;">Deletes the assets in package versions and
sets the package versions' status to Disposed</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeartifact_get_authorization_token/"> get_authorization_token </a></td>
<td style="text-align: left;">Generates a temporary authorization token
for accessing repositories in the domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeartifact_get_domain_permissions_policy/"> get_domain_permissions_policy </a></td>
<td style="text-align: left;">Returns the resource policy attached to
the specified domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeartifact_get_package_version_asset/"> get_package_version_asset </a></td>
<td style="text-align: left;">Returns an asset (or file) that is in a
package</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeartifact_get_package_version_readme/"> get_package_version_readme </a></td>
<td style="text-align: left;">Gets the readme file or descriptive text
for a package version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeartifact_get_repository_endpoint/"> get_repository_endpoint </a></td>
<td style="text-align: left;">Returns the endpoint of a repository for a
specific package format</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeartifact_get_repository_permissions_policy/"> get_repository_permissions_policy </a></td>
<td style="text-align: left;">Returns the resource policy that is set on
a repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeartifact_list_domains/"> list_domains </a></td>
<td style="text-align: left;">Returns a list of DomainSummary objects
for all domains owned by the Amazon Web Services account that makes this
call</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeartifact_list_packages/"> list_packages </a></td>
<td style="text-align: left;">Returns a list of PackageSummary objects
for packages in a repository that match the request parameters</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeartifact_list_package_version_assets/"> list_package_version_assets </a></td>
<td style="text-align: left;">Returns a list of AssetSummary objects for
assets in a package version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeartifact_list_package_version_dependencies/"> list_package_version_dependencies </a></td>
<td style="text-align: left;">Returns the direct dependencies for a
package version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeartifact_list_package_versions/"> list_package_versions </a></td>
<td style="text-align: left;">Returns a list of PackageVersionSummary
objects for package versions in a repository that match the request
parameters</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeartifact_list_repositories/"> list_repositories </a></td>
<td style="text-align: left;">Returns a list of RepositorySummary
objects</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeartifact_list_repositories_in_domain/"> list_repositories_in_domain </a></td>
<td style="text-align: left;">Returns a list of RepositorySummary
objects</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeartifact_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Gets information about Amazon Web Services
tags for a specified Amazon Resource Name (ARN) in CodeArtifact</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeartifact_publish_package_version/"> publish_package_version </a></td>
<td style="text-align: left;">Creates a new package version containing
one or more assets (or files)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeartifact_put_domain_permissions_policy/"> put_domain_permissions_policy </a></td>
<td style="text-align: left;">Sets a resource policy on a domain that
specifies permissions to access it</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeartifact_put_package_origin_configuration/"> put_package_origin_configuration </a></td>
<td style="text-align: left;">Sets the package origin configuration for
a package</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeartifact_put_repository_permissions_policy/"> put_repository_permissions_policy </a></td>
<td style="text-align: left;">Sets the resource policy on a repository
that specifies permissions to access it</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeartifact_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds or updates tags for a resource in
CodeArtifact</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeartifact_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from a resource in
CodeArtifact</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codeartifact_update_package_versions_status/"> update_package_versions_status </a></td>
<td style="text-align: left;">Updates the status of one or more versions
of a package</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codeartifact_update_repository/"> update_repository </a></td>
<td style="text-align: left;">Update the properties of a repository</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- codeartifact()
    svc$associate_external_connection(
      Foo = 123
    )

    ## End(Not run)
