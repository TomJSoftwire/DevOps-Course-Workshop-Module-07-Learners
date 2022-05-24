FROM mcr.microsoft.com/dotnet/sdk:6.0
RUN apt-get update
RUN apt-get install -y \
build-essential

RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
&& apt-get install -y nodejs

COPY ./DotnetTemplate.Web /app
WORKDIR /app

RUN dotnet build
RUN npm install \
&& npm run build


ENTRYPOINT [ "dotnet", "run" ]
