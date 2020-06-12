FROM centos:8

# Base Image details.
ENV SUMMARY=".NET Core Runtime" \
    DESCRIPTION=".NET Core Runtime base image."

LABEL summary="$SUMMARY" \
      description="$DESCRIPTION" \
      name="janrauchfuss/dotnet-31-runtime-centos8" \
      version="3.1" \
      maintainer="Jan Rauchfuss <jan.rauchfuss@cgi.com>"

# Expore Ports
EXPOSE 80 443

# Define Packages and package sources
ARG INSTALL_PKGS="wget curl tar unzip bzip2 dnf-plugins-core aspnetcore-runtime-3.1 dotnet-runtime-3.1"

# Install and update packages.
RUN dnf update -y && \
    dnf clean all && \
    dnf install -y $INSTALL_PKGS && \
    rpm -V $INSTALL_PKGS && \
    dnf clean all

# Environment variables
ENV ASPNETCORE_URLS=http://+:80 \
    DOTNET_RUNNING_IN_CONTAINER=true \
    DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=true