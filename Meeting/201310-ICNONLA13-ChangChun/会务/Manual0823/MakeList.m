[num, raw, raw] = xlsread('list0902.xls');
fid = fopen('talk.tex','w+');
n = size(raw,1);
% for i = 3:4
%     raw{i,7} = input(['input the subject of ' raw{i,2} raw{i,1} ': '],'s' );
% end
for i = 3:n
    if raw{i,9}==1
        fprintf(fid, '%%----------------------------------------------%%\n');
        fprintf(fid, '%%----------------------------------------------%%\n\n');
        fprintf(fid, '\\bc\n\\subj{%s} \n\\bb\\name{%s %s}\n',raw{i,7},raw{i,2},raw{i,1});
        if ~strcmp(raw{i,3},'TBA'), fprintf(fid,'\\dpt{%s}\n',  raw{i,3}); end
        if ~strcmp(raw{i,4},'TBA'), fprintf(fid,'\\univ{%s}\n', raw{i,4}); end
        if ~strcmp(raw{i,5},'TBA'), fprintf(fid,'\\city{%s}\n', raw{i,5}); end
        if ~strcmp(raw{i,6},'TBA'), fprintf(fid,'\\email{%s}\n',raw{i,6}); end       
        fprintf(fid, '\n\\ec\n\n%s\n\n',raw{i,8});
        fprintf(fid, '\\tcont{%s}{%s %s}\n\n\\np\n\n',raw{i,7},raw{i,2},raw{i,1});
    end
end

fprintf(fid,'\n\n\n\\part{Contributed Talks}\n\n\n');

for i = 3:n
    if raw{i,9}==2
        fprintf(fid, '%%----------------------------------------------%%\n');
        fprintf(fid, '%%----------------------------------------------%%\n\n');
        fprintf(fid, '\\bc\n\\subj{%s} \n\\bb\\name{%s %s}\n',raw{i,7},raw{i,2},raw{i,1});
        if ~strcmp(raw{i,3},'TBA'), fprintf(fid,'\\dpt{%s}\n',  raw{i,3}); end
        if ~strcmp(raw{i,4},'TBA'), fprintf(fid,'\\univ{%s}\n', raw{i,4}); end
        if ~strcmp(raw{i,5},'TBA'), fprintf(fid,'\\city{%s}\n', raw{i,5}); end
        if ~strcmp(raw{i,6},'TBA'), fprintf(fid,'\\email{%s}\n',raw{i,6}); end       
        fprintf(fid, '\n\\ec\n\n%s\n\n',raw{i,8});
        fprintf(fid, '\\tcont{%s}{%s %s}\n\n\\np\n\n',raw{i,7},raw{i,2},raw{i,1});
    end
end
fclose(fid);

fid = fopen('list.tex','w+');
for i = 3:n
    fprintf(fid,'\\bb \\name{%s %s}\n',raw{i,2},raw{i,1});
    if ~strcmp(raw{i,3},'TBA'), fprintf(fid,'\\dpt{%s}\n',  raw{i,3}); end
    if ~strcmp(raw{i,4},'TBA'), fprintf(fid,'\\univ{%s}\n', raw{i,4}); end
    if ~strcmp(raw{i,5},'TBA'), fprintf(fid,'\\city{%s}\n', raw{i,5}); end
    if ~strcmp(raw{i,6},'TBA'), fprintf(fid,'\\email{%s}\n',raw{i,6}); end
    fprintf(fid,'\n');
end
fclose(fid);