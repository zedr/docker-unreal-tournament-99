FROM i386/ubuntu

RUN apt-get update && apt-get install bzip2

ADD http://ut-files.com/Entire_Server_Download/ut-server-436.tar.gz /var/tmp
RUN tar -xzf /var/tmp/ut-server-436.tar.gz -C /opt
ADD http://www.ut-files.com/Patches/utpgpatch451.tar.bz2 /var/tmp
RUN tar -xjpf /var/tmp/utpgpatch451.tar.bz2 -C /opt/ut-server
ADD UnrealTournament.ini /opt/ut-server/System/UnrealTournament.ini

RUN chmod +x /opt/ut-server/ucc

EXPOSE 7777-7781
EXPOSE 27900

CMD ./opt/ut-server/ucc server
