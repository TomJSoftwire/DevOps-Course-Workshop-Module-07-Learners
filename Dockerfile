FROM mcr.microsoft.com/dotnet/sdk:6.0

RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
&& apt-get install -y nodejs

COPY ./DotnetTemplate.Web /app
WORKDIR /app

RUN dotnet build
RUN npm install


ENTRYPOINT [ "dotnet", "run" ]
