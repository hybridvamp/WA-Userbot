FROM quay.io/lyfe00011/md:beta
RUN git clone https://github.com/lyfe00011/levanter.git /root/LyFE/
WORKDIR /root/LyFE/
RUN yarn install
COPY envloader.sh /envloader.sh
RUN chmod +x /envloader.sh

ENTRYPOINT ["/envloader.sh"]
CMD ["npm", "start"]
